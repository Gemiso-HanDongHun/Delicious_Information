package com.champion.deliciousInfo.member.controller;

import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.dto.KaKaoUserInfoDTO;
import com.champion.deliciousInfo.member.service.KakaoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.member.domain.OAuthValue.KAKAO_REDIRECT_URI;
import static com.champion.deliciousInfo.member.domain.SNSLogin.KAKAO;
import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;
import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FROM;

@Controller
@Log4j2
@RequiredArgsConstructor
public class KakaoContorller {

    private final KakaoService kakaoService;

    @GetMapping(KAKAO_REDIRECT_URI)
    public String kakaoLogin(String code, HttpSession session, RedirectAttributes ra) throws Exception {
        log.info("{} GET!! code - {}", KAKAO_REDIRECT_URI, code);


        log.info("code-{}",code);
        // 인가코드를 통해 액세스토큰 발급받기
        // 우리서버에서 카카오서버로 통신을 해야함.
        String accessToken = kakaoService.getAccessToken(code);

        // 액세스 토큰을 통해 사용자 정보 요청(프로필사진, 닉네임 등)
        KaKaoUserInfoDTO userInfo = kakaoService.getKakaoUserInfo(accessToken);

        // 로그인 처리
        if (userInfo != null) {
            Member member = new Member();
            member.setAccount(userInfo.getEmail());
            member.setName(userInfo.getNickName());
            member.setEmail(userInfo.getEmail());
            member.setGender(userInfo.getGender());
            session.setAttribute(LOGIN_FLAG, member);
            session.setAttribute("profile_path", userInfo.getProfileImg());
            session.setAttribute(LOGIN_FROM, KAKAO);
            session.setAttribute("accessToken", accessToken);
            ra.addFlashAttribute("msg","로그인 성공");
            return "redirect:/food/list";
        }

        return "redirect:/member/login";
    }
}
