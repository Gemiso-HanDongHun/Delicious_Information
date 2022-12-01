package com.champion.deliciousInfo.mfood.service;


import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import com.champion.deliciousInfo.mfood.domain.Mfood;
import com.champion.deliciousInfo.mfood.domain.MfoodNutrient;
import com.champion.deliciousInfo.mfood.repository.MfoodMapper;
import com.champion.deliciousInfo.mfood.repository.MfoodNutrientMapper;
import com.champion.deliciousInfo.util.ExcelUtils;
import com.champion.deliciousInfo.util.FileUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Log4j2
public class MfoodService {


    private final MfoodMapper mfoodMapper;

    private final MfoodNutrientMapper mfoodNutrientMapper;
    //전체 조회
    /*public List<Food> findAllService() {
        List<Food> foodList = foodMapper.findAll();
        return foodList;
    }*/


    /*public Map<String, Object> findAllService(Page page) {

        Map<String, Object> findDataMap = new HashMap<>();
        List<Food> foodList= foodMapper.findAll(page);

        findDataMap.put("fList", foodList);
        findDataMap.put("tc", foodMapper.getTotalCount());

        return findDataMap;
    }
*/
    /*public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Food> foodList = foodMapper.search(search);

        findDataMap.put("fList", foodList);
        findDataMap.put("tc", foodMapper.getTotalCount(search));

        return findDataMap;
    }*/


    // 한건 조회
    public Mfood findOne(int foodNo) {
        Mfood food = mfoodMapper.findOne(foodNo);
        return food;
    }

    @Transactional
    public boolean insert(Mfood food, MfoodNutrient fn) {

        boolean flag1 = mfoodMapper.save(food);
        boolean flag2 = mfoodNutrientMapper.save(fn);

        return flag1 && flag2;
    }


    public boolean modify(Mfood food, MfoodNutrient fn) {
        boolean flag = mfoodMapper.modify(food);
        boolean flag2 = mfoodNutrientMapper.modify(fn);
        return flag && flag2;
    }


    @Transactional
    public boolean remove(int foodNo, int nutrientNo) {
        boolean flag2 = mfoodNutrientMapper.remove(nutrientNo);
        boolean flag1 = mfoodMapper.remove(foodNo);
        return flag1 && flag2;
    }

}
