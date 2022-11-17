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

    @GetMapping("/carb")
    public String carb(Model model, HttpSession session) {

        return "about/carb";
    }

    @GetMapping("/protein")
    public String protein(Model model, HttpSession session) {

        return null;
    }
    @GetMapping("/fat")
    public String fat(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/na")
    public String na(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/ca")
    public String ca(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/fe")
    public String fe(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/dha")
    public String dha(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/mg")
    public String mg(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/vitaminA")
    public String vitaminA(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/vitaminC")
    public String vitaminC(Model model, HttpSession session) {

        return null;
    }

    @GetMapping("/vitaminE")
    public String vitaminE(Model model, HttpSession session) {

        return null;
    }

}
