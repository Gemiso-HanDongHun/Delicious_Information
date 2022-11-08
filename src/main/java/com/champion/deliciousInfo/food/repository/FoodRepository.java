package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.Food;

import java.util.List;


public interface FoodRepository {

    // 목록 전체 조회
    List<Food> findAll();

    // 목록 단일 조회
    Food findOne(int foodNo);

}
