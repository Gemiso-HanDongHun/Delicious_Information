package com.champion.deliciousInfo.member.controller;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.service.FreeBoardService;
import com.champion.deliciousInfo.board.service.InfoBoardService;
import com.champion.deliciousInfo.board.service.SboardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.domain.SNSLogin;
import com.champion.deliciousInfo.member.service.KakaoService;
import com.champion.deliciousInfo.member.dto.LoginDTO;
import com.champion.deliciousInfo.member.service.MemberLoginFlag;
import com.champion.deliciousInfo.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.Map;

import static com.champion.deliciousInfo.member.domain.OAuthValue.*;
import static com.champion.deliciousInfo.util.LoginUtils.*;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    private final MemberService memberService;

    private final KakaoService kakaoService;

    private final FreeBoardService freeBoardService;

    private final SboardService sboardService;

    private final InfoBoardService infoBoardService;

    // 마이페이지
    @GetMapping("/mypage")
    public String mypage(Model model, HttpSession session){

        Member member = (Member)session.getAttribute(LOGIN_FLAG);

        List<FreeBoard> freeBoardList = freeBoardService.findByAccount(member.getAccount());
        List<InfoBoard> infoBoardList = infoBoardService.findByAccount(member.getAccount());
        List<Sboard> sboardList = sboardService.findByAccount(member.getAccount());

        model.addAttribute("AllfbList", freeBoardList);
        model.addAttribute("userinfo", infoBoardList);
        model.addAttribute("usersuggest", sboardList);

        return "/member/mypage";
    }

    
    // 로그인 폼 요청
    @GetMapping("/sign-in")
    public String home(Model model, HttpSession session, HttpServletRequest request) {
        log.info("/member/sign-in GET! - forwarding to sign-in.jsp - {}");

        // 요청 정보 헤더 안에는 Referer라는 키가 있는데
        // 여기 안에는 이 페이지로 진입할 때 어디에서 왔는지 URI정보가 들어있음.
        String referer = request.getHeader("Referer");
        log.info("referer: {}", referer);

        model.addAttribute("kakaoAppKey", KAKAO_APP_KEY);
        model.addAttribute("kakaoRedirect", KAKAO_REDIRECT_URI);
        session.setAttribute("redirectURI", referer);

        return "member/sign-in";
    }

    //sign-in 처리 요청
    @PostMapping("/sign-in")
    public String signIn(LoginDTO inputData, Model model, HttpSession session,RedirectAttributes ra) {

        log.info("/member/sign-in POST - {}", inputData);

        // 로그인 서비스 호출
        MemberLoginFlag flag = memberService.login(inputData, session);

        if (flag == MemberLoginFlag.SUCCESS) {
            log.info("login success!!");
            String redirectURI = (String) session.getAttribute("redirectURI");
            ra.addFlashAttribute("msg","로그인 성공");
            log.info("redirectUri ={}",redirectURI);
            if(redirectURI!=null) {
                return "redirect:" + redirectURI;
            }else{
                return "redirect:/member/sign-in";
            }
        }
        model.addAttribute("loginMsg", flag);
        return "member/sign-in";
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
        if(flag){
            ra.addFlashAttribute("msg", "회원가입 성공");
        }else{
            ra.addFlashAttribute("msg", "회원가입 실패");
        }

        return flag ? "redirect:/member/sign-in" : "redirect:/member/sign-up";
    }

    // 아이디, 이메일 중복확인 비동기 요청 처리
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity<Boolean> check(String type, String value) {
        log.info("/member/check?type={}&value={} GET!! ASYNC", type, value);
        boolean flag = memberService.checkSignUpValue(type, value);

        return new ResponseEntity<>(flag, HttpStatus.OK);
    }

    @GetMapping("/sign-out")
    public String signOut(HttpServletRequest request,RedirectAttributes ra) throws Exception {

        HttpSession session = request.getSession();
        String referer = request.getHeader("Referer");

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
            ra.addFlashAttribute("msg","로그아웃");
            if(referer!=null) {
                return "redirect:" + referer;
            }else{
                return "redirect:/food/list";
            }
        }
        return "redirect:/member/sign-in";
    }

    @GetMapping("/sign-in-test")
    public String loginTest(){
        return "food/sign-intest";
    }

}
