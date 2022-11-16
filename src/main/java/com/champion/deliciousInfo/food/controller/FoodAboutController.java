package com.champion.deliciousInfo.food.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@RequestMapping("/food/about")
@Log4j2
@Controller
public class FoodAboutController {

    @GetMapping("/carbohydrate")
    public String carb(Model model, HttpSession session) {

        return "about/carb";

    }
}
