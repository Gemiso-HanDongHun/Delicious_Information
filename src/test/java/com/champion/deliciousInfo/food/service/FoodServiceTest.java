package com.champion.deliciousInfo.food.service;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class FoodServiceTest {


    @Autowired
    FoodMapper mapper;

    @Test
    @DisplayName("전체 게시물을 조회하고 반환된 리스트의 사이즈는 1이어야 한다.")
    void findAllTest() {

        List<Food> foodList =mapper.findAll();
        foodList.forEach(b -> System.out.println(b));

        assertEquals(1, foodList.size());
    }
}