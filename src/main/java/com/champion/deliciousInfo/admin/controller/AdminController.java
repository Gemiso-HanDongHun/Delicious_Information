package com.champion.deliciousInfo.admin.controller;

import com.champion.deliciousInfo.admin.domain.Admin;
import com.champion.deliciousInfo.admin.service.AdminService;
import com.champion.deliciousInfo.admin.service.LoginFlag;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
@Log4j2
@RequiredArgsConstructor
public class AdminController {
    
    private final AdminService adminService;
    private final FoodService foodService;
    
    @GetMapping("/main")
    public String getMain(){
        log.info("GetMapping admin/index  forwarding to index.jsp");
        return "admin/index";
    }

    @GetMapping("/login")
    public String getLoginForm(@ModelAttribute("message") String message){
        log.info("GetMapping admin/login-form forwarding to login-form.jsp - {}", message);
        return "admin/login-form";
    }

    @PostMapping("/login")
    public String login(Admin admin, HttpSession session, Model model){
        log.info("PostMapping login -{}",admin);
        LoginFlag flag = adminService.findAdmin(admin, session);
        if (flag == LoginFlag.SUCCESS) {
            log.info("login success!!");
            return "redirect:/admin/main";
        }
        model.addAttribute("loginMsg", flag);
        return "admin/login-form";
    }
    @GetMapping("/food")
    public String getFoodList(Model model){
        log.info("GetMapping admin/food forwarding to foodList.jsp ");
        List<Food> foodList = foodService.getList();
        model.addAttribute("foodList",foodList);
        return "admin/food-list";
    }

    @GetMapping("/food/{foodNo}")
    public String getFoodList(@PathVariable("foodNo") int foodNo,Model model){
        log.info("GetMapping admin/food{foodNo} forwarding to foodDetail -{} ",foodNo);
        List<Food> foodList = foodService.getList();
        model.addAttribute("foodList",foodList);
        return "admin/food-detail";
    }


}
