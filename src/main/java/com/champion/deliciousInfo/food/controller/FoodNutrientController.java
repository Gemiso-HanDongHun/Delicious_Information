package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodNutrientService;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
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

        FoodNutrient foodNutrient0 = foodNutrientService.carbo(foodNo);
        FoodNutrient foodNutrient1 = foodNutrientService.pro(foodNo);
        FoodNutrient foodNutrient2 = foodNutrientService.fat(foodNo);
        FoodNutrient foodNutrient3 = foodNutrientService.sodium(foodNo);
        FoodNutrient foodNutrient4 = foodNutrientService.vitaminA(foodNo);
        FoodNutrient foodNutrient5 = foodNutrientService.vitaminC(foodNo);
        FoodNutrient foodNutrient6 = foodNutrientService.vitaminE(foodNo);
        FoodNutrient foodNutrient7 = foodNutrientService.omega(foodNo);
        FoodNutrient foodNutrient8 = foodNutrientService.calcium(foodNo);
        FoodNutrient foodNutrient9 = foodNutrientService.iron(foodNo);
        FoodNutrient foodNutrient10 = foodNutrientService.magnesium(foodNo);


        model.addAttribute("fn", foodNutrient);
        model.addAttribute("fl", foodList);
        model.addAttribute("carbo", foodNutrient0);
        model.addAttribute("pro", foodNutrient1);
        model.addAttribute("fat", foodNutrient2);
        model.addAttribute("sodium", foodNutrient3);
        model.addAttribute("vitaminA", foodNutrient4);
        model.addAttribute("vitaminC", foodNutrient5);
        model.addAttribute("vitaminE", foodNutrient6);
        model.addAttribute("omega", foodNutrient7);
        model.addAttribute("calcium", foodNutrient8);
        model.addAttribute("iron", foodNutrient9);
        model.addAttribute("magnesium", foodNutrient10);


        log.info("foodnutrient - {}", foodNutrient);
        return "/food/food-nutrient";

    }


    @GetMapping("nutrient2/{foodNo}")
    public String list2(@PathVariable int foodNo, Model model) {

        FoodNutrient foodNutrient = foodNutrientService.findOne(foodNo);
        List<Food> foodList = foodService.findAllService();

        model.addAttribute("fn", foodNutrient);
        model.addAttribute("fl", foodList);
        FoodNutrient foodNutrient0 = foodNutrientService.carbo2(foodNo);
        FoodNutrient foodNutrient1 = foodNutrientService.pro2(foodNo);
        FoodNutrient foodNutrient2 = foodNutrientService.fat2(foodNo);
        FoodNutrient foodNutrient3 = foodNutrientService.sodium2(foodNo);
        FoodNutrient foodNutrient4 = foodNutrientService.vitaminA2(foodNo);
        FoodNutrient foodNutrient5 = foodNutrientService.vitaminC2(foodNo);
        FoodNutrient foodNutrient6 = foodNutrientService.vitaminE2(foodNo);
        FoodNutrient foodNutrient7 = foodNutrientService.omega2(foodNo);
        FoodNutrient foodNutrient8 = foodNutrientService.calcium2(foodNo);
        FoodNutrient foodNutrient9 = foodNutrientService.iron2(foodNo);
        FoodNutrient foodNutrient10 = foodNutrientService.magnesium2(foodNo);


        model.addAttribute("fn", foodNutrient);
        model.addAttribute("fl", foodList);
        model.addAttribute("carbo2", foodNutrient0);
        model.addAttribute("pro2", foodNutrient1);
        model.addAttribute("fat2", foodNutrient2);
        model.addAttribute("sodium2", foodNutrient3);
        model.addAttribute("vitaminA2", foodNutrient4);
        model.addAttribute("vitaminC2", foodNutrient5);
        model.addAttribute("vitaminE2", foodNutrient6);
        model.addAttribute("omega2", foodNutrient7);
        model.addAttribute("calcium2", foodNutrient8);
        model.addAttribute("iron2", foodNutrient9);
        model.addAttribute("magnesium2", foodNutrient10);

        log.info("foodnutrient - {}", foodNutrient);
        return "/food/food-nutrient2";
    }



}

