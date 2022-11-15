package com.champion.deliciousInfo.food.service;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public FoodNutrient carbo(int foodNo){
        FoodNutrient foodNutrient0 = foodNutrientMapper.findOne(foodNo);
        Float carbo = foodNutrient0.getCarbohydrate();
        double newcarbo = 2700 * 0.5 - Math.round(carbo * 100) / 100.0;
        foodNutrient0.setCarbohydrate((float) newcarbo);

        return foodNutrient0;
    }


    public FoodNutrient pro(int foodNo){
        FoodNutrient foodNutrient1 = foodNutrientMapper.findOne(foodNo);
        Float protein = foodNutrient1.getProtein();
        double newProtein = 55 - Math.round(protein * 100) / 100.0;
        foodNutrient1.setProtein((float) newProtein);

        return foodNutrient1;
    }

    public FoodNutrient fat(int foodNo) {
        FoodNutrient foodNutrient2 = foodNutrientMapper.findOne(foodNo);
        Float fat = foodNutrient2.getFat();
        double newFat = 53 - Math.round(fat * 100) / 100.0;
        foodNutrient2.setFat((float) newFat);

        return foodNutrient2;
    }

    public FoodNutrient sodium(int foodNo) {
        FoodNutrient foodNutrient3 = foodNutrientMapper.findOne(foodNo);
        Float sodium = foodNutrient3.getSodium();
        double newSodium = 2000 - Math.round(sodium * 100) / 100.0;
        foodNutrient3.setSodium((float) newSodium);

        return foodNutrient3;
    }

    public FoodNutrient vitaminA(int foodNo) {
        FoodNutrient foodNutrient4 = foodNutrientMapper.findOne(foodNo);
        Float vitaminA = foodNutrient4.getVitaminA();
        double newvitaminA = 900 - Math.round(vitaminA * 100) / 100.0;
        foodNutrient4.setVitaminA((float) newvitaminA);

        return foodNutrient4;
    }

    public FoodNutrient vitaminC(int foodNo) {
        FoodNutrient foodNutrient5 = foodNutrientMapper.findOne(foodNo);
        Float vitaminC = foodNutrient5.getVitaminC();
        double newvitaminC = 100 - Math.round(vitaminC * 100) / 100.0;
        foodNutrient5.setVitaminC((float) newvitaminC);

        return foodNutrient5;
    }

    public FoodNutrient vitaminE(int foodNo) {
        FoodNutrient foodNutrient6 = foodNutrientMapper.findOne(foodNo);
        Float vitaminE = foodNutrient6.getVitaminE();
        double newvitaminE = 540 - Math.round(vitaminE * 100) / 100.0;
        foodNutrient6.setVitaminE((float) newvitaminE);

        return foodNutrient6;
    }

    public FoodNutrient omega(int foodNo) {
        FoodNutrient foodNutrient7 = foodNutrientMapper.findOne(foodNo);
        Float omega = foodNutrient7.getOmega();
        double newomega = 500 - Math.round(omega * 100) / 100.0;
        foodNutrient7.setOmega((float) newomega);

        return foodNutrient7;
    }

    public FoodNutrient calcium(int foodNo) {
        FoodNutrient foodNutrient8 = foodNutrientMapper.findOne(foodNo);
        Float calcium = foodNutrient8.getCalcium();
        double newcalcium = 700 - Math.round(calcium * 100) / 100.0;
        foodNutrient8.setCalcium((float) newcalcium);

        return foodNutrient8;
    }

    public FoodNutrient iron(int foodNo) {
        FoodNutrient foodNutrient9 = foodNutrientMapper.findOne(foodNo);
        Float iron = foodNutrient9.getIron();
        double newiron = 15 - Math.round(iron * 100) / 100.0;
        foodNutrient9.setIron((float) newiron);

        return foodNutrient9;
    }

    public FoodNutrient magnesium(int foodNo) {
        FoodNutrient foodNutrient10 = foodNutrientMapper.findOne(foodNo);
        Float magnesium = foodNutrient10.getMagnesium();
        double newmagnesium = 350 - Math.round(magnesium * 100) / 100.0;
        foodNutrient10.setMagnesium((float) newmagnesium);

        return foodNutrient10;
    }
}


