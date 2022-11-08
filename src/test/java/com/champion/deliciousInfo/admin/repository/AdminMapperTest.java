package com.champion.deliciousInfo.admin.repository;

import com.champion.deliciousInfo.admin.domain.Admin;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class AdminMapperTest {

    @Autowired AdminMapper mapper;
    @Autowired BCryptPasswordEncoder encoder;


    @Test
    @DisplayName("아이디를 admin 비밀번호를 test를 입력하고 관리자를 찾으면 admin이 존재해야한다")
    void findAdminTest(){
        //given
        Admin admin = new Admin();
        admin.setAccount("admin");
        admin.setPassword("test");
        //when
        Admin foundAdmin =mapper.findUser(admin);
        //then
        assertNotNull(foundAdmin);
    }
    @Test
    @DisplayName("아이디를 asdin 비밀번호를 aac로 입력하고 관리자를 찾으면 admin이 존재하면 안된다")
    void notFindAdmin(){
        //given
        Admin admin = new Admin();
        admin.setAccount("asdin");
        admin.setPassword("aac");
        //when
        Admin foundAdmin =mapper.findUser(admin);

        //then
        assertNull(foundAdmin);
    }

    @Test
    @DisplayName("아이디와 비밀번호를 입력하면 계정이 생성되어 true가 나와야한다")
    void registTest(){
        //given
        Admin admin = new Admin();
        admin.setAccount("admin");
        admin.setPassword("test");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        admin.setPassword(encoder.encode(admin.getPassword()));
        //when
        boolean flag= mapper.regist(admin);
        //then
        assertTrue(flag);
    }

}