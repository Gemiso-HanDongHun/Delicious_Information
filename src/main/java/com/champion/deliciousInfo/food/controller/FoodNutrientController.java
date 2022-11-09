package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.service.FoodNutrientService;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
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

    // 영양분 정보 상세 조회
    @GetMapping("/food-nutrient")
    public String list(Model model) {

        List<FoodNutrient> foodNutrientList = foodNutrientService.findAllService();

        model.addAttribute("fnList", foodNutrientList);
        return "/food/food-nutrient";
    }

}

