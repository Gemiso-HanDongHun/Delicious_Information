package com.champion.deliciousInfo.food.Service;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public abstract class FoodNutrientService {

    private final FoodNutrientMapper foodNutrientMapper;

    public List<FoodNutrient> findAllService() {
        log.info("findAll service start");

        List<FoodNutrient> foodNutrientList = foodNutrientMapper.findAll();


        return foodNutrientList;
    }




}


