package com.champion.deliciousInfo.food.service;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.poi.ss.formula.functions.Today;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFootnotes;
import org.springframework.stereotype.Service;

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

    public FoodNutrient carbo(int foodNo) {
        FoodNutrient foodNutrient0 = foodNutrientMapper.findOne(foodNo);
        Float carbo = foodNutrient0.getCarbohydrate();
        double newcarbo = 2700 * 0.5 - Math.round(carbo * 100) / 100.0;
        foodNutrient0.setCarbohydrate((float) newcarbo);

        TodayNutrient tn = new TodayNutrient();
        tn.setCarbohydrate((float) newcarbo);

        return foodNutrient0;
    }

    public Map<String, Object> manRecommend(int foodNo) {
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = foodNutrientMapper.findOne(foodNo);

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
        List<FoodNutrient> recommend = foodNutrientMapper.recommend(tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        return findRecommendData;
    }

    public Map<String, Object> womanRecommend(int foodNo) {
        Map<String, Object> findRecommendData = new HashedMap<>();
        FoodNutrient foodNutrient = foodNutrientMapper.findOne(foodNo);

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
        List<FoodNutrient> recommend = foodNutrientMapper.recommend(tn);
        findRecommendData.put("tl",recommend);
        findRecommendData.put("tn",tn);
        return findRecommendData;
    }

    public FoodNutrient total(List<FoodNutrient> myList){
        FoodNutrient foodNutrient = new FoodNutrient();

        if(myList!=null) {
            for (FoodNutrient fn : myList) {
                foodNutrient.addTotal(fn);
            }
        }

        return foodNutrient;
    }

}


