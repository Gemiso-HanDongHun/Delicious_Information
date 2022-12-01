package com.champion.deliciousInfo.mfood.repository;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.mfood.domain.MfoodNutrient;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MfoodNutrientMapper {

    MfoodNutrient findOne(InfoBoard infoBoard);
    boolean save(MfoodNutrient fn);
    boolean modify(MfoodNutrient foodNutrient);
    boolean remove(int nutrientNo);

}