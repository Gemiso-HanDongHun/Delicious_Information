package com.champion.deliciousInfo.food.repository;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class FoodNutrientMapperTest {
    @Autowired
    FoodNutrientMapper foodNutrientMapper;


    @Test
    @DisplayName("김치의 영양정보를 수정하면 true가 나와야한다")
    @Transactional
    @Rollback
    void modifytest(){
        //given
        FoodNutrient foodNutrient = new FoodNutrient();
        foodNutrient.setProtein(3.0f);
        foodNutrient.setFat(23.0f);
        int fno=1;
        //when
        boolean flag = foodNutrientMapper.modify(foodNutrient);
        //then
        assertTrue(flag);
    }

}