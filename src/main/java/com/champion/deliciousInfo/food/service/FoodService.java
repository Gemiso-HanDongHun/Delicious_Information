package com.champion.deliciousInfo.food.service;


import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.exception.ExcelException;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import com.champion.deliciousInfo.util.ExcelUtils;
import com.champion.deliciousInfo.util.FileUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Log4j2
public class FoodService {


    private final FoodMapper foodMapper;
    private final FoodNutrientMapper foodNutrientMapper;

    //전체 조회
    public List<Food> findAllService() {
        List<Food> foodList = foodMapper.findAll();
        return foodList;
    }


    /*public Map<String, Object> findAllService(Page page) {

        Map<String, Object> findDataMap = new HashMap<>();
        List<Food> foodList= foodMapper.findAll(page);

        findDataMap.put("fList", foodList);
        findDataMap.put("tc", foodMapper.getTotalCount());

        return findDataMap;
    }
*/
    public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Food> foodList = foodMapper.search(search);

        findDataMap.put("fList", foodList);
        findDataMap.put("tc", foodMapper.getTotalCount(search));

        return findDataMap;
    }


    // 한건 조회
    public Food findOne(int foodNo) {
        Food food = foodMapper.findOne(foodNo);
        return food;
    }

    @Transactional
    public boolean insert(Food food, FoodNutrient fn, MultipartFile file) {
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag1 = foodMapper.save(food);
        boolean flag2 = foodNutrientMapper.save(fn);

        return flag1 && flag2;
    }

    @Transactional
    public boolean insertByExcel(MultipartFile excel) throws ExcelException {
        boolean flag1 = false;
        boolean flag2 = false;
        File file = new File(FileUtils.UPLOAD_EXCEL_PATH, excel.getOriginalFilename());
        try {
            excel.transferTo(file);
            log.info("엑셀 업로드 -{}", excel);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        List<FoodNutrient> foodNutrientList = ExcelUtils.getParseResult(file);
        for (FoodNutrient foodnutrient : foodNutrientList) {

            //파일이 현재 존재하는 위치
            String filePath = foodnutrient.getFood().getImg();
            //파일을 저장할 위치(날짜별로 생성)
            String uploadDest = FileUtils.uploadName(foodnutrient.getFood().getImg(), FileUtils.UPLOAD_PATH);
            //엑셀에 적혀있는 파일위치에서 이미지 파일 가져와 내가 지정한 폴더에 저장하기
            FileUtils.fileCopy(filePath, uploadDest);
            //db에 저장할 이미지 파일위치 변경하기
            foodnutrient.getFood().setImg(uploadDest);
            //db에 저장
            flag1 = foodMapper.save(foodnutrient.getFood());
            flag2 = foodNutrientMapper.save(foodnutrient);

        }

        return flag1 && flag2;
    }

    public boolean modify(Food food, FoodNutrient fn) {
        boolean flag = foodMapper.modify(food);
        boolean flag2 = foodNutrientMapper.modify(fn);
        return flag && flag2;
    }

    @Transactional
    public boolean modify(Food food, FoodNutrient fn, MultipartFile file) {
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag = foodMapper.modifyFile(food);
        boolean flag2 = foodNutrientMapper.modify(fn);
        return flag && flag2;
    }

    @Transactional
    public boolean remove(int foodNo, int nutrientNo) {
        boolean flag2 = foodNutrientMapper.remove(nutrientNo);
        boolean flag1 = foodMapper.remove(foodNo);
        return flag1 && flag2;
    }

}
