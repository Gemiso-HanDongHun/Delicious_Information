package com.champion.deliciousInfo.member.controller;

import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.domain.SNSLogin;
import com.champion.deliciousInfo.member.service.KakaoService;
import com.champion.deliciousInfo.member.dto.LoginDTO;
import com.champion.deliciousInfo.member.service.MemberLoginFlag;
import com.champion.deliciousInfo.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.member.domain.OAuthValue.*;
import static com.champion.deliciousInfo.util.LoginUtils.*;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;

    private final KakaoService kakaoService;

    // 로그인 폼 요청
    @GetMapping("/login")
    public String home(Model model, HttpSession session, HttpServletRequest request) {
        log.info("/member/login GET! - forwarding to sign-in.jsp - {}");

        // 요청 정보 헤더 안에는 Referer라는 키가 있는데
        // 여기 안에는 이 페이지로 진입할 때 어디에서 왔는지 URI정보가 들어있음.
        String referer = request.getHeader("Referer");
        log.info("referer: {}", referer);

        model.addAttribute("kakaoAppKey", KAKAO_APP_KEY);
        model.addAttribute("kakaoRedirect", KAKAO_REDIRECT_URI);
        session.setAttribute("redirectURI", referer);

        return "member/login";
    }

    //login 처리 요청
    @PostMapping("/login")
    public String signIn(LoginDTO inputData, Model model, HttpSession session) {

        log.info("/member/sign-in POST - {}", inputData);

        // 로그인 서비스 호출
        MemberLoginFlag flag = memberService.login(inputData, session);

        if (flag == MemberLoginFlag.SUCCESS) {
            log.info("login success!!");
            String redirectURI = (String) session.getAttribute("redirectURI");
            log.info("redirectUri ={}",redirectURI);
            if(redirectURI!=null) {
                return "redirect:" + redirectURI;
            }else{
                return "redirect:/food/list";
            }
        }
        model.addAttribute("loginMsg", flag);
        return "member/login";

    }

    // 회원가입 양식 띄우기 요청
    @GetMapping("/sign-up")
    public String signUp() {
        log.info("/member/sign-up GET! - forwarding to sign-up.jsp");
        return "member/sign-up";
    }

    // 회원가입 처리 요청
    @PostMapping("/sign-up")
    public String signUp(Member member, RedirectAttributes ra) {
        log.info("/member/sign-up POST ! - {}", member);
        boolean flag = memberService.signUp(member);
        ra.addFlashAttribute("msg", "reg-success");
        return flag ? "redirect:/member/login" : "redirect:/member/sign-up";
    }


    @GetMapping("/sign-out")
    public String signOut(HttpServletRequest request) throws Exception {

        HttpSession session = request.getSession();

        if (isLogin(session)) {

            // 만약 자동로그인 상태라면 해제한다.
            /*if (hasAutoLoginCookie(request)) {
                memberService.autoLogout(getCurrentMemberAccount(session), request, response);
            }*/

            // SNS로그인 상태라면 해당 SNS 로그아웃처리를 진행
            SNSLogin from = (SNSLogin) session.getAttribute(LOGIN_FROM);
            if(from !=null) {
                switch (from) {
                    case KAKAO:
                        kakaoService.logout((String) session.getAttribute("accessToken"));
                        break;
                    /*case NAVER:
                        break;
                    case GOOGLE:
                        break;
                    case FACEBOOK:
                        break;*/
                }
            }

            // 1. 세션에서 정보를 삭제한다.
            session.removeAttribute(LOGIN_FLAG);

            // 2. 세션을 무효화한다.
            session.invalidate();
            return "redirect:/food/list";
        }
        return "redirect:/member/sign-in";
    }

    @GetMapping("/login-test")
    public String loginTest(){
        return "food/logintest";
    }

}
