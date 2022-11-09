package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodMapper {

    // 목록 전체 조회
    List<Food> findAll();

    // 목록 단일 조회
    Food findOne(int foodNo);

    boolean save(Food food);

    boolean modify(Food food);
    boolean modifyFile(Food food);

    boolean remove(int foodNo);

}
