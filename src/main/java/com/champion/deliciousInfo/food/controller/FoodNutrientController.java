package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodNutrientService;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/food")
public class FoodNutrientController {

    private final FoodNutrientService foodNutrientService;

    private final FoodService foodService;

    // 영양분 정보 상세 조회
    @GetMapping("/nutrient/{foodNo}")
    public String list(@PathVariable int foodNo, Model model) {

        FoodNutrient foodNutrient = foodNutrientService.findOne(foodNo);
        List<Food> foodList = foodService.findAllService();

        model.addAttribute("fn", foodNutrient);
        model.addAttribute("fl", foodList);
        log.info("foodnutrient - {}",foodNutrient);
        return "/food/food-nutrient";

    }



}

