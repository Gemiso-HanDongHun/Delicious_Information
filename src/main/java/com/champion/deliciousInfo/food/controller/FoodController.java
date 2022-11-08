package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class FoodController {

    private final FoodService service;

    @GetMapping("/list")
    public String list(Model model) {
        List<Food> foodList = service.getList();
        model.addAttribute("fList", foodList);
        return "food/index";
    }



}
