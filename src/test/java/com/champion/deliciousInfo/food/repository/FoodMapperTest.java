package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.Food;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class FoodMapperTest {

    @Autowired FoodMapper foodMapper;

    @Test
    @DisplayName("김치를 수정하면 true가 나와야한다.")
    @Rollback
    @Transactional
    void modifyTest(){
        //given
        Food food = new Food();
        food.setName("sdf");
        food.setImg("SDf");
        food.setKcal(33);
        food.setFoodNo(1);
        //when
        boolean flag = foodMapper.modify(food);
        //then
        assertTrue(flag);
    }

}