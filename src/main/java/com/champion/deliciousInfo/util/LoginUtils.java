package com.champion.deliciousInfo.util;

import com.champion.deliciousInfo.member.domain.Member;

import javax.servlet.http.HttpSession;

public class LoginUtils {

    public static final String LOGIN_ADMIN = "loginAdmin";

    public static final String LOGIN_FLAG = "loginUser";
    public static final String LOGIN_FROM = "loginMethod";

    // 로그인했는지 알려주기~~
    public static boolean isLogin(HttpSession session) {
        return session.getAttribute(LOGIN_FLAG) != null;
    }

    public static String getCurrentMemberAccount(HttpSession session) {
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        return member.getAccount();
    }

    // 로그인한 사용자 권한 가져오기
    public static String getCurrentMemberGrade(HttpSession session) {
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        return member.getGrade();
    }

}
