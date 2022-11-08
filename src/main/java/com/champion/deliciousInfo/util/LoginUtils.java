package com.champion.deliciousInfo.util;

import javax.servlet.http.HttpSession;

public class LoginUtils {

    public static final String LOGIN_ADMIN = "loginAdmin";

    // 로그인했는지 알려주기~~
    public static boolean isLogin(HttpSession session) {
        return session.getAttribute(LOGIN_ADMIN) != null;
    }




}
