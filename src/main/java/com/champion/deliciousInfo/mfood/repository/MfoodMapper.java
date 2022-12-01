package com.champion.deliciousInfo.mfood.repository;

import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.mfood.domain.Mfood;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MfoodMapper {


    // 목록 단일 조회
    Mfood findOne(int foodNo);
    
    // insert 구문
    boolean save(Mfood food);

    //update 구문
    boolean modify(Mfood food);

    //delete 구문
    boolean remove(int foodNo);

}
