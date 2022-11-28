package com.champion.deliciousInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;


@Controller
public class HomeController {

    @GetMapping("/food-main")
    public String home() {
        return "food/food-main";

    }

    @GetMapping("/food-about")
    public String about(){
        return "food/food-about";
    }

}
