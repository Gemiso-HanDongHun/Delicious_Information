package com.champion.deliciousInfo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @GetMapping("/member/login")
    public String home(Model model, HttpSession session) {
        return "member/login";
    }
}
