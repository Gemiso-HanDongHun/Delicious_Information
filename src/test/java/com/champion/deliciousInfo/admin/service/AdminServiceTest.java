package com.champion.deliciousInfo.admin.service;

import com.champion.deliciousInfo.admin.domain.Admin;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import static com.champion.deliciousInfo.admin.service.LoginFlag.SUCCESS;
import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class AdminServiceTest {

    @Autowired AdminService service;


}