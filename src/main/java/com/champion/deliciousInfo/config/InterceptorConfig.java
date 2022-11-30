package com.champion.deliciousInfo.config;

import com.champion.deliciousInfo.intercepter.AdminInterceptor;
import com.champion.deliciousInfo.intercepter.AfterLoginInterceptor;
import com.champion.deliciousInfo.intercepter.BoardInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// 다양한 인터셉터들을 관리하는 설정 클래스
@Configuration
@RequiredArgsConstructor
public class InterceptorConfig implements WebMvcConfigurer {

    private final AdminInterceptor adminInterceptor;

    private final AfterLoginInterceptor afterLoginInterceptor;

    private final BoardInterceptor boardInterceptor;
    // 인터셉터 설정 추가 메서드
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 게시판 인터셉터 설정
        registry.addInterceptor(adminInterceptor)
                .addPathPatterns("/asdfasdf/*")
                .excludePathPatterns("/admin/login");

        // 애프터 로그인 인터셉터 설정
        registry.addInterceptor(afterLoginInterceptor)
                .addPathPatterns("/member/sign-in", "/member/sign-up");
        // 게시판 인터셉터 설정
        registry.addInterceptor(boardInterceptor)
                .addPathPatterns("/board/suggestionBoard/*")
                .excludePathPatterns("/board/suggestionBoard", "/board/suggestionBoard/detail");



    }
}