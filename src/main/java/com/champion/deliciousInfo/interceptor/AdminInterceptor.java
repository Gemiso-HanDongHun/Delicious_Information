package com.champion.deliciousInfo.interceptor;

import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.util.LoginUtils.isLogin;

// 인터셉터: 컨트롤러에 요청이 들어가기 전, 후에 공통처리할
//          일들을 정의해놓는 클래스
@Configuration
@Log4j2
public class AdminInterceptor implements HandlerInterceptor {

    /*
        인터셉터의 전처리 메서드.
        리턴값이 true일 경우 컨트롤러 진입을 허용하고
        false일 경우 진입을 허용하지 않는다.
     */

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

//        RequestDispatcher dispatcher
//                = request.getRequestDispatcher("/WEB-INF/views/member/sign-in.jsp");

        log.info("admin interceptor preHandle()");
        if (!isLogin(session)) {
            log.info("로그인이 필요한 서비스");
            // dispatcher.forward(request, response);

            response.sendRedirect("/admin/login?message=no-login");
            return false;
        }
        return true;
    }

}
