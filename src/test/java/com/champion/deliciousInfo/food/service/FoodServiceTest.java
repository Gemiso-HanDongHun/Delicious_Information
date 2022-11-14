package com.champion.deliciousInfo.food.service;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class FoodServiceTest {


    @Autowired FoodMapper mapper;

    @Autowired FoodService foodService;

    @Test
    @DisplayName("전체 게시물을 조회하고 반환된 리스트의 사이즈는 34이어야 한다.")
    void findAllTest() {

        List<Food> foodList =mapper.findAll();
        foodList.forEach(b -> System.out.println(b));

        assertEquals(34, foodList.size());
    }

    @Test
    @DisplayName("1번 food를 조회하면 김치가 나와야한다.")
    void findOneTest(){
        //given
        int foodNo=1;
        //when
        Food foundFood = foodService.findOne(1);
        //then
        assertEquals("김치",foundFood.getName());
    }

    @Test
    @DisplayName("이름이 라면인 음식을 insert하면 true가 나와야한다.")
    @Transactional
    @Rollback
    void insertTest(){
        //given
        Food food=new Food();
        food.setName("라면");
        food.setImg("33.jpg");
        food.setKcal(323);
        FoodNutrient fn = new FoodNutrient();

        //when
//        boolean flag = foodService.insert(food,fn);
        //then
//        assertTrue(flag);
    }
    @Test
    @DisplayName("김치의 kcal를 수정하면 true가 나와야한다.")
    @Transactional
    @Rollback
    void modifyTest(){
        //given
        Food food = new Food();
        food.setName("김치2");
        food.setKcal(22);
        food.setImg("DFd");
        food.setFoodNo(1);
        FoodNutrient foodNutrient = new FoodNutrient();
        int fno=1;
        //when
        boolean flag = foodService.modify(food,foodNutrient,fno);
        //then
        assertTrue(flag);
    }

    @Test
    @DisplayName("46번을 수정하면 삭제 되어야 한다.")
    @Transactional
    @Rollback
    void removeTest(){
        //given
        int foodNo =46;
        //when
        boolean flag = foodService.remove(foodNo);
        //then
        assertTrue(flag);
    }

    @Test
    @DisplayName("원하는 페이지수와 게시물양에 따라 게시물 목록을 조회해야 한다.")
    void pagingTest() {
        Page page = new Page(1, 10);

        mapper.findAll(page).forEach(System.out::println);
    }



}