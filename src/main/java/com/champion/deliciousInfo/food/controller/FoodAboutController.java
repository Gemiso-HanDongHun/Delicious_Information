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

        return "about/protein";
    }
    @GetMapping("/fat")
    public String fat(Model model, HttpSession session) {

        return "about/fat";
    }

    @GetMapping("/na")
    public String na(Model model, HttpSession session) {

        return "about/na";
    }

    @GetMapping("/ca")
    public String ca(Model model, HttpSession session) {

        return "about/ca";
    }

    @GetMapping("/fe")
    public String fe(Model model, HttpSession session) {

        return "about/fe";
    }

    @GetMapping("/dha")
    public String dha(Model model, HttpSession session) {

        return "about/dha";
    }

    @GetMapping("/mg")
    public String mg(Model model, HttpSession session) {

        return "about/mg";
    }

    @GetMapping("/vitaminA")
    public String vitaminA(Model model, HttpSession session) {

        return "about/vitaminA";
    }

    @GetMapping("/vitaminC")
    public String vitaminC(Model model, HttpSession session) {

        return "about/vitaminC";
    }

    @GetMapping("/vitaminE")
    public String vitaminE(Model model, HttpSession session) {

        return "about/vitaminE";
    }

}
