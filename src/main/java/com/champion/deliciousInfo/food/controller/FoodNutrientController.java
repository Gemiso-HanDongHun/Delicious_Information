package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.food.service.FoodNutrientService;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

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
        Map<String,Object> recommendData = foodNutrientService.manRecommend(foodNo);
        List<FoodNutrient> todayNutrientList = (List<FoodNutrient>) recommendData.get("tl");
        TodayNutrient todayNutrient = (TodayNutrient) recommendData.get("tn");

        model.addAttribute("fn",foodNutrient);
        model.addAttribute("tl",todayNutrientList);
        model.addAttribute("tn",todayNutrient);

        log.info("foodnutrient - {}", foodNutrient);
        return "food/food-nutrient";

    }

    @GetMapping("nutrient2/{foodNo}")
    public String list2(@PathVariable int foodNo, Model model) {

        FoodNutrient foodNutrient = foodNutrientService.findOne(foodNo);
        Map<String,Object> recommendData = foodNutrientService.womanRecommend(foodNo);
        List<FoodNutrient> todayNutrientList = (List<FoodNutrient>) recommendData.get("tl");
        TodayNutrient todayNutrient = (TodayNutrient) recommendData.get("tn");

        model.addAttribute("fn", foodNutrient);
        model.addAttribute("tl", todayNutrientList);
        model.addAttribute("tn",todayNutrient);

        log.info("foodnutrient - {}", foodNutrient);
        return "food/food-nutrient2";
    }

    @GetMapping("/select-nutrient")
    public String getSelect1(HttpSession session,Model model) {
        List<FoodNutrient> myList = (List<FoodNutrient>) session.getAttribute("myList");
        log.info("GetMapping /select-nutrient -{}",myList);
        Map<String, Object> foundMapData = foodNutrientService.manTotal(myList);
        List<FoodNutrient> todayNutrientList = (List<FoodNutrient>) foundMapData.get("tl");
        TodayNutrient todayNutrient = (TodayNutrient) foundMapData.get("tn");
        FoodNutrient total = (FoodNutrient) foundMapData.get("fn");

        model.addAttribute("total",total);
        model.addAttribute("tn",todayNutrient);
        model.addAttribute("tl",todayNutrientList);
        return "/food/food-nutrient-list";
    }
    @GetMapping("/select-nutrient2")
    public String getSelect2(HttpSession session,Model model) {
        List<FoodNutrient> myList = (List<FoodNutrient>) session.getAttribute("myList");
        log.info("GetMapping /select-nutrient -{}",myList);
        Map<String, Object> foundMapData = foodNutrientService.womanTotal(myList);
        List<FoodNutrient> todayNutrientList = (List<FoodNutrient>) foundMapData.get("tl");
        TodayNutrient todayNutrient = (TodayNutrient) foundMapData.get("tn");
        FoodNutrient total = (FoodNutrient) foundMapData.get("fn");

        model.addAttribute("total",total);
        model.addAttribute("tn",todayNutrient);
        model.addAttribute("tl",todayNutrientList);
        return "/food/food-nutrient-list2";
    }
}

