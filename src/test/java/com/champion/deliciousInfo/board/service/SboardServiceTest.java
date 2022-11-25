package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.Sboard;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class SboardServiceTest {

    @Autowired private SboardService sboardService;

    @Test
    @DisplayName("글300개를 만들면 300개가 나와야함")
    void registTest(){
        //given
        boolean flag=false;
        for (int i = 1; i <= 300; i++) {
        Sboard sboard = Sboard.builder()
                .title(i+"번째 게시물")
                .content(i+"번째 내용")
                .writer("test")
                .build();
        //when
            flag = sboardService.regist(sboard);
            if(!flag)break;
        }

        //then
        assertTrue(flag);
    }

}