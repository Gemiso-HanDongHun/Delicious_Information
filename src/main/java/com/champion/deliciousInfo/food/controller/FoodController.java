package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class FoodController {

    private final FoodService service;


    // 전체 목록 가져오기
    @GetMapping("/list")
    public String list(Model model) {
        List<Food> foodList = service.getList();
        model.addAttribute("fList", foodList);
        return "food/food-list";
    }


    // 한개 상세정보 가져오기
    /*@GetMapping("/listOne")
    public String listOne(Model model, int foodNo) {
        Food food = service.getListOne(foodNo);
        model.addAttribute("fOne", food);
        return null;
    }*/



}
