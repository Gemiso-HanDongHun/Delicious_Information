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
}


