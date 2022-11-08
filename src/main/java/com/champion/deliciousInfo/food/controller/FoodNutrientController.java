package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.Service.FoodNutrientService;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

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

