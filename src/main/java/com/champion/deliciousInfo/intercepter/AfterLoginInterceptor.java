package com.champion.deliciousInfo.intercepter;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.util.LoginUtils.isLogin;

@Configuration
public class AfterLoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        if (isLogin(session)) {
            response.sendRedirect("/food/list");
            return false;
        }
        return true;

    }
}
