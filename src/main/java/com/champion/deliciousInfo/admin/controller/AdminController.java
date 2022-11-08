package com.champion.deliciousInfo.admin.controller;

import com.champion.deliciousInfo.admin.domain.Admin;
import com.champion.deliciousInfo.admin.service.AdminService;
import com.champion.deliciousInfo.admin.service.LoginFlag;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
@Log4j2
@RequiredArgsConstructor
public class AdminController {
    
    private final AdminService service;
    
    @GetMapping("/main")
    public String getMain(){
        log.info("getMapping admin/index");
        return "admin/index";
    }

    @GetMapping("/login")
    public String getLoginForm(@ModelAttribute("message") String message){
        log.info("getMapping admin/login-form forwarding to login-form.jsp - {}", message);
        return "admin/login-form";
    }

    @PostMapping("/login")
    public String login(Admin admin, HttpSession session, Model model){
        log.info("PostMapping login -{}",admin);
        LoginFlag flag = service.findAdmin(admin, session);
        if (flag == LoginFlag.SUCCESS) {
            log.info("login success!!");
            return "redirect:/admin/main";
        }
        model.addAttribute("loginMsg", flag);
        return "admin/login-form";
    }


}
