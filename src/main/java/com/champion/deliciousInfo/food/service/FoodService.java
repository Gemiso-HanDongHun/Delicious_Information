package com.champion.deliciousInfo.food.service;


import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import com.champion.deliciousInfo.util.ExcelUtils;
import com.champion.deliciousInfo.util.FileUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class FoodService {


    private final FoodMapper foodMapper;
    private final FoodNutrientMapper foodNutrientMapper;

    //전체 조회
    public List<Food> findAllService() {
        List<Food> foodList = foodMapper.findAll();
        return foodList;
    }


    public Map<String, Object> findAllService(Page page) {

        Map<String, Object> findDataMap = new HashMap<>();
        List<Food> foodList= foodMapper.findAll(page);

        findDataMap.put("fList", foodList);
        findDataMap.put("tc", foodMapper.getTotalCount());

        return findDataMap;
    }


    // 한건 조회
    public Food findOne(int foodNo) {
        Food food = foodMapper.findOne(foodNo);
        return food;
    }

    @Transactional
    public boolean insert(Food food,FoodNutrient fn, MultipartFile file){
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag1 = foodMapper.save(food);
        boolean flag2 =foodNutrientMapper.save(fn);

        return flag1&&flag2;
    }
    @Transactional
    public boolean insertByExcel(MultipartFile excel){
        boolean flag1 =false;
        boolean flag2 =false;
        File file =null;
        try {
            excel.transferTo(file =new File(FileUtils.UPLOAD_EXCEL_PATH+"/"+excel.getOriginalFilename()));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        List<FoodNutrient> foodNutrientList = ExcelUtils.getParseResult(file);
        for (FoodNutrient foodnutrient:foodNutrientList) {

            String uploadDest = FileUtils.uploadName(foodnutrient.getFood().getImg(), FileUtils.UPLOAD_PATH);
            try(FileInputStream  fis = new FileInputStream(foodnutrient.getFood().getImg());
                    FileOutputStream fos = new FileOutputStream(uploadDest)) {
                // 파일을 대상으로 한 출력 스트림

                //개발자가 파일명을 생성해야함;
                int data=-1;
                while(true) {
                    data =fis.read();//다시 1byte 읽음
                    if(data==-1)break; //멈춤
                    fos.write(data);//다시 1byte출력
                }
                //복사완료
            } catch (FileNotFoundException e1) {
                e1.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            flag1 =foodMapper.save(foodnutrient.getFood());
            flag2 = foodNutrientMapper.save(foodnutrient);
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        return flag1&&flag2;
    }

    public boolean modify(Food food,FoodNutrient fn,int foodNo){
        boolean flag = foodMapper.modify(food);
        boolean flag2 = foodNutrientMapper.modify(fn,foodNo);
        return flag&&flag2;
    }

    @Transactional
    public boolean modify(Food food, FoodNutrient fn,MultipartFile file,int foodNo){
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag = foodMapper.modifyFile(food);
        boolean flag2 = foodNutrientMapper.modify(fn,foodNo);
        return flag&&flag2;
    }

    public boolean remove(int foodNo){
        boolean flag = foodMapper.remove(foodNo);
        return flag;
    }

}
