package com.champion.deliciousInfo.admin.service;

import com.champion.deliciousInfo.admin.domain.Admin;
import com.champion.deliciousInfo.admin.repository.AdminMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.admin.service.LoginFlag.*;
import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_ADMIN;

@Service
@Log4j2
@RequiredArgsConstructor
public class AdminService {

    private final AdminMapper mapper;
    private final BCryptPasswordEncoder encoder;


    public LoginFlag findAdmin(Admin admin,HttpSession session){

        Admin foundAdmin = mapper.findUser(admin);
        if(foundAdmin!=null){
            if(encoder.matches(admin.getPassword(),foundAdmin.getPassword())) { //로그인 성공
                //세션에 사용자 정보 기록 저장
                session.setAttribute(LOGIN_ADMIN,foundAdmin);

                // 세션 타임아웃 설정
                session.setMaxInactiveInterval(60 * 60); // 1시간
                return SUCCESS;
            }
        }

        return FAIL;
    }
}
