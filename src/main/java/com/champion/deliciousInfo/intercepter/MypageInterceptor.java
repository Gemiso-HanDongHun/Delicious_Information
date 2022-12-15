package com.champion.deliciousInfo.intercepter;

import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import static com.champion.deliciousInfo.util.LoginUtils.getCurrentMemberAccount;
import static com.champion.deliciousInfo.util.LoginUtils.getCurrentMemberGrade;


@Configuration
@Log4j2
public class MypageInterceptor implements HandlerInterceptor {












    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        // postHandle이 작동해야 하는 URI 목록
        List<String> uriList = List.of("/member/mypage");

       //  현재 요청 URI 정보 알아내기
        String requestURI = request.getRequestURI();
        log.info("requestURI - {}", requestURI);

        // 현재 요청 메서드 정보 확인
        String method = request.getMethod();

       //  postHandle은 uriList 목록에 있는 URI에서만 작동하게 함
        if (uriList.contains(requestURI) && method.equalsIgnoreCase("GET")) {
            log.info("board interceptor postHandle() ! ");

            HttpSession session = request.getSession();

           //  컨트롤러의 메서드를 처리한 후 모델에 담긴 데이터의 맵
            Map<String, Object> modelMap = modelAndView.getModel();

        log.info("modelMap.size() - {}", modelMap.size());
            log.info("modelMap - {}", modelMap);

            ValidateMemberDTO dto = (ValidateMemberDTO) modelMap.get("validate");


            if (!isMine(session, dto.getAccount())) {
                response.sendRedirect("/food/list");
            }
        }
    }

    private boolean isAdmin(HttpSession session) {
        return getCurrentMemberGrade(session).equals("admin");
    }

    private static boolean isMine(HttpSession session, String account) {
        return account.equals(getCurrentMemberAccount(session));
    }
}
