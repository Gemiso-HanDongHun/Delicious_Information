package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FoodMapper {

    // 목록 전체 조회
    List<Food> findAll();


    //검색 조회
    // 목록 전체 조회 Paging 처리
    List<Food> search(Search search);
    
    // 전체 목록 조회
//    int getTotalCount();
    
    //검색 조회 count 처리
    int getTotalCount(Search search);

    // 목록 단일 조회
    Food findOne(int foodNo);
    
    // insert 구문
    boolean save(Food food);

    //update 구문 img파일 수정 안 할  경우
    boolean modify(Food food);
    //update 구문 img파일 수정 할 경우
    boolean modifyFile(Food food);

    //delete 구문
    boolean remove(int foodNo);

}
