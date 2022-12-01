package com.champion.deliciousInfo.mfood.service;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.food.repository.FoodNutrientMapper;
import com.champion.deliciousInfo.mfood.domain.MfoodNutrient;
import com.champion.deliciousInfo.mfood.repository.MfoodNutrientMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class MfoodNutrientService {

    private final MfoodNutrientMapper foodNutrientMapper;


    public MfoodNutrient findOne(InfoBoard infoBoard) {

        MfoodNutrient foodNutrient = foodNutrientMapper.findOne(infoBoard);

        return foodNutrient;
    }




}



