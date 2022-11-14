package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.food.domain.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodMapper {

    // 목록 전체 조회
    List<Food> findAll2();

    // 목록 전체 조회 Paging 처리
    List<Food> findAll(Page page);

    // 전체 목록 조회
    int getTotalCount();

    // 목록 단일 조회
    Food findOne(int foodNo);

    boolean save(Food food);

    boolean modify(Food food);
    boolean modifyFile(Food food);

    boolean remove(int foodNo);

}
