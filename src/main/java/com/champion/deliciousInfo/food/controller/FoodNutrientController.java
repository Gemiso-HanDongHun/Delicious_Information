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
    @GetMapping("/nutrient")
    public String list(Model model) {

        List<FoodNutrient> foodNutrientList = foodNutrientService.findAllService();
        List<Food> foodList = foodService.getList();

        model.addAttribute("fnList", foodNutrientList);
        model.addAttribute("fl", foodList);

        return "/food/food-nutrient";

    }



}

