package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodNutrientMapper {

    List<FoodNutrient> findAll(int foodNo);




}
