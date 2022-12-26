package com.champion.deliciousInfo.food.service;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import com.champion.deliciousInfo.util.RecommendUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class FoodNutrientService {

    private final FoodNutrientMapper foodNutrientMapper;

    public List<FoodNutrient> findAllService() {

        List<FoodNutrient> foodNutrientList = foodNutrientMapper.findAll();

        return foodNutrientList;
    }

    public FoodNutrient findOne(int foodNo) {

        FoodNutrient foodNutrient = foodNutrientMapper.findOne(foodNo);

        return foodNutrient;
    }


    public Map<String, Object> manRecommend(int foodNo) {
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = foodNutrientMapper.findOne(foodNo);

        TodayNutrient tn = getManTn(foodNutrient);
//        if (tn.getCarbohydrate() <= 0) {
//            tn.setType("c");
//        }
//        if (tn.getProtein() <= 0) {
//            tn.setType("p");
//        }
//        if (tn.getFat() <= 0) {
//            tn.setType("f");
//        }
//        if (tn.getProtein() <= 0 && tn.getCarbohydrate() <= 0) {
//            tn.setType("cp");
//        }
//        if (tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("pf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cpf");
//        }
        List<FoodNutrient> list = foodNutrientMapper.findAll();
//        Collections.shuffle(recommend);
        List<FoodNutrient> recommend = RecommendUtils.recommend(list,tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        return findRecommendData;
    }

    
    public Map<String, Object> womanRecommend(int foodNo) {
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = foodNutrientMapper.findOne(foodNo);

        TodayNutrient tn = getWomanTn(foodNutrient);
//        if (tn.getCarbohydrate() <= 0) {
//            tn.setType("c");
//        }
//        if (tn.getProtein() <= 0) {
//            tn.setType("p");
//        }
//        if (tn.getFat() <= 0) {
//            tn.setType("f");
//        }
//        if (tn.getProtein() <= 0 && tn.getCarbohydrate() <= 0) {
//            tn.setType("cp");
//        }
//        if (tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("pf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cpf");
//        }
        List<FoodNutrient> list = foodNutrientMapper.findAll();
//        Collections.shuffle(recommend);
        List<FoodNutrient> recommend = RecommendUtils.recommend(list,tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        return findRecommendData;
    }

   

    public Map<String, Object> manTotal(List<FoodNutrient> myList){
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = new FoodNutrient();
        TodayNutrient tn =null;
        if(myList!=null) {
            for (FoodNutrient fn : myList) {
                log.info("total실행중인 fn -{}",fn);
                foodNutrient.addTotal(fn);
            }
        }
        tn = getManTn(foodNutrient);
//        if (tn.getCarbohydrate() <= 0) {
//            tn.setType("c");
//        }
//        if (tn.getProtein() <= 0) {
//            tn.setType("p");
//        }
//        if (tn.getFat() <= 0) {
//            tn.setType("f");
//        }
//        if (tn.getProtein() <= 0 && tn.getCarbohydrate() <= 0) {
//            tn.setType("cp");
//        }
//        if (tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("pf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cpf");
//        }
        List<FoodNutrient> list = foodNutrientMapper.findAll();

//        Collections.shuffle(recommend);
        List<FoodNutrient> recommend = RecommendUtils.recommend(list,tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        findRecommendData.put("fn",foodNutrient);
        return findRecommendData;
    }

    public Map<String, Object> womanTotal(List<FoodNutrient> myList){
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = new FoodNutrient();
        TodayNutrient tn =null;
        if(myList!=null) {
            for (FoodNutrient fn : myList) {
                log.info("total실행중인 fn -{}",fn);
                foodNutrient.addTotal(fn);
            }
        }
        tn = getWomanTn(foodNutrient);
//        if (tn.getCarbohydrate() <= 0) {
//            tn.setType("c");
//        }
//        if (tn.getProtein() <= 0) {
//            tn.setType("p");
//        }
//        if (tn.getFat() <= 0) {
//            tn.setType("f");
//        }
//        if (tn.getProtein() <= 0 && tn.getCarbohydrate() <= 0) {
//            tn.setType("cp");
//        }
//        if (tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("pf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cf");
//        }
//        if (tn.getCarbohydrate() <= 0 && tn.getProtein() <= 0 && tn.getFat() <= 0) {
//            tn.setType("cpf");
//        }
//        List<FoodNutrient> recommend = foodNutrientMapper.recommend(tn);
        List<FoodNutrient> list = foodNutrientMapper.findAll();

//        Collections.shuffle(recommend);
        List<FoodNutrient> recommend = RecommendUtils.recommend(list,tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        findRecommendData.put("fn",foodNutrient);
        return findRecommendData;
    }

    private static TodayNutrient getManTn(FoodNutrient foodNutrient) {
        double todayCarbo = (2700 * 0.5 - Math.round(foodNutrient.getCarbohydrate() * 100) / 100.0);
        double todayProtein = 55 - Math.round(foodNutrient.getProtein() * 100) / 100.0;
        double todayFat = 53 - Math.round(foodNutrient.getFat() * 100) / 100.0;
        double todaySodium = 2000 - Math.round(foodNutrient.getSodium() * 100) / 100.0;
        double todayVitaminA = 900 - Math.round(foodNutrient.getVitaminA() * 100) / 100.0;
        double todayVitaminC = 100 - Math.round(foodNutrient.getVitaminC() * 100) / 100.0;
        double todayVitaminE = 540 - Math.round(foodNutrient.getVitaminE() * 100) / 100.0;
        double todayOmega = 500 - Math.round(foodNutrient.getOmega() * 100) / 100.0;
        double todayCalcium = 700 - Math.round(foodNutrient.getCalcium() * 100) / 100.0;
        double todayIron = 15 - Math.round(foodNutrient.getIron() * 100) / 100.0;
        double todayMagnesium = 350 - Math.round(foodNutrient.getMagnesium() * 100) / 100.0;


        TodayNutrient tn = TodayNutrient.builder()
                .carbohydrate((float) todayCarbo)
                .protein((float) todayProtein)
                .fat((float)todayFat)
                .sodium((float)todaySodium)
                .vitaminA((float)todayVitaminA)
                .vitaminC((float)todayVitaminC)
                .vitaminE((float)todayVitaminE)
                .omega((float)todayOmega)
                .calcium((float)todayCalcium)
                .iron((float)todayIron)
                .magnesium((float)todayMagnesium)
                .build();
        return tn;
    }
    private static TodayNutrient getWomanTn(FoodNutrient foodNutrient) {
        double todayCarbo = 2100 * 0.5 - Math.round(foodNutrient.getCarbohydrate() * 100) / 100.0;
        double todayProtein = 50 - Math.round(foodNutrient.getProtein() * 100) / 100.0;
        double todayFat = 42 - Math.round(foodNutrient.getFat() * 100) / 100.0;
        double todaySodium = 2000 - Math.round(foodNutrient.getSodium() * 100) / 100.0;
        double todayVitaminA = 700 - Math.round(foodNutrient.getVitaminA() * 100) / 100.0;
        double todayVitaminC = 100 - Math.round(foodNutrient.getVitaminC() * 100) / 100.0;
        double todayVitaminE = 540 - Math.round(foodNutrient.getVitaminE() * 100) / 100.0;
        double todayOmega = 500 - Math.round(foodNutrient.getOmega() * 100) / 100.0;
        double todayCalcium = 700 - Math.round(foodNutrient.getCalcium() * 100) / 100.0;
        double todayIron = 15 - Math.round(foodNutrient.getIron() * 100) / 100.0;
        double todayMagnesium = 280 - Math.round(foodNutrient.getMagnesium() * 100) / 100.0;

        TodayNutrient tn = TodayNutrient.builder()
                .carbohydrate((float) todayCarbo)
                .protein((float) todayProtein)
                .fat((float)todayFat)
                .sodium((float)todaySodium)
                .vitaminA((float)todayVitaminA)
                .vitaminC((float)todayVitaminC)
                .vitaminE((float)todayVitaminE)
                .omega((float)todayOmega)
                .calcium((float)todayCalcium)
                .iron((float)todayIron)
                .magnesium((float)todayMagnesium)
                .build();
        return tn;
    }


}



