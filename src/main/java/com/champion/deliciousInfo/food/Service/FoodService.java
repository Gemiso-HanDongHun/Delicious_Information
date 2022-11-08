package com.champion.deliciousInfo.food.service;


import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FoodService {

    private final FoodMapper mapper;
    
    //전체 조회
    public List<Food> getList() {
        System.out.println("서비스 실행중");
        List<Food> foodList = mapper.findAll();
        return foodList;
    }

    // 한건 조회

}
