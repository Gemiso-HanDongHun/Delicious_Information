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
        Float protein = foodNutrient.getProtein();
        double newProtein = 55 - Math.round(protein * 100) / 100.0;
        foodNutrient.setProtein((float) newProtein);

        return foodNutrient;
    }





}


