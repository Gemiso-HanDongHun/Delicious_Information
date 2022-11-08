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
    @GetMapping("/food-detail")
    public String list(Model model) {
        log.info("controller request /board/list GET!");
        List<FoodNutrient> foodNutrientList = foodNutrientService.findAllService();

        log.info("return data - {}", foodNutrientList);

        model.addAttribute("fList", foodNutrientList);
        return "food/food-detail";

    }

}

