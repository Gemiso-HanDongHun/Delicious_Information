package com.champion.deliciousInfo.member.controller;

import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.dto.LoginDTO;
import com.champion.deliciousInfo.member.service.MemberLoginFlag;
import com.champion.deliciousInfo.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;


    // 회원가입 양식 띄우기 요청
    @GetMapping("/sign-up")
    public void signUp() {
        log.info("/member/sign-up GET! - forwarding to sign-up.jsp");
    }

    // 회원가입 처리 요청
    @PostMapping("/sign-up")
    public String signUp(Member member, RedirectAttributes ra) {
        log.info("/member/sign-up POST ! - {}", member);
        boolean flag = memberService.signUp(member);
        ra.addFlashAttribute("msg", "reg-success");
        return flag ? "redirect:/member/login" : "redirect:/member/sign-up";
    }

    @GetMapping("/login")
    public void login(HttpSession session, HttpServletRequest request) {
        String referer = request.getHeader("Referer");
        log.info("referer: {}", referer);


        request.getSession().setAttribute("redirectURI", referer);
    }

    @PostMapping("/login")
    public String signIn(LoginDTO inputData, Model model, HttpSession session) {

        log.info("/member/sign-in POST - {}", inputData);

        // 로그인 서비스 호출
        MemberLoginFlag flag = memberService.login(inputData, session);

        if (flag == MemberLoginFlag.SUCCESS) {
            log.info("login success!!");
            String redirectURI = (String) session.getAttribute("redirectURI");
            return "redirect:"+ redirectURI;
        }
        model.addAttribute("loginMsg", flag);
        return "member/login";

    }

    @GetMapping("/sign-out")
    public String signOut(HttpSession session) {

        if (session.getAttribute("loginUser") != null) {
            // 1. 세션에서 정보를 삭제한다.
            session.removeAttribute("loginUser");

            // 2. 세션을 무효화한다.
            session.invalidate();
            return "redirect:/";
        }
        return "redirect:/member/login";
    }

}
