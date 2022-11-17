package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodNutrientMapper {

    List<FoodNutrient> findAll();
    FoodNutrient findOne(int foodNo);
    boolean save(FoodNutrient fn);
    boolean modify(FoodNutrient foodNutrient);
    boolean remove(int nutrientNo);

    List<FoodNutrient> recommend(TodayNutrient td);

}