package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.board.repository.SboardMapper;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.reply.repository.ReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class SboardService {

    private final SboardMapper sboardMapper;

    private final ReplyMapper replyMapper;

    public List<Sboard> findAll(){
        log.info("sboard findALL start");
        List<Sboard> sboardList = sboardMapper.findAll();
        return sboardList;
    }
    public Map<String, Object> search(Search search) {
        log.info("sboard findALL service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Sboard> sboardList = sboardMapper.search(search);
        processConverting(sboardList);

        findDataMap.put("sl", sboardList);
        findDataMap.put("tc", sboardMapper.getTotalCount(search));

        return findDataMap;
    }

    public Sboard findOne(Long boardNo, HttpServletResponse response, HttpServletRequest request){
        log.info("sboard findOne service start");
        Sboard foundOne = sboardMapper.findOne(boardNo);
        makeViewCount(boardNo,  response, request);
        return foundOne;
    }

    private void makeViewCount(Long boardNo, HttpServletResponse response, HttpServletRequest request) {
        // 쿠키를 조회 - 해당 이름의 쿠키가 있으면 쿠키가 들어오고 없으면 null이 들어옴
        Cookie foundCookie = WebUtils.getCookie(request, "b" + boardNo);

        if (foundCookie == null) {
            sboardMapper.upViewCount(boardNo);

            Cookie cookie = new Cookie("b" + boardNo, String.valueOf(boardNo));// 쿠키 생성
            cookie.setMaxAge(60); // 쿠키 수명 설정
            cookie.setPath("/board/suggestionBoard/detail"); // 쿠키 작동 범위

            response.addCookie(cookie); // 클라이언트에 쿠키 전송
        }
    }

    public boolean regist(Sboard sboard){
        log.info("sboard reigst start -{}",sboard);
        boolean flag = sboardMapper.regist(sboard);
        return flag;
    }

    // 게시물 수정 요청 중간 처리
    public boolean modifyService(Sboard sboard) {
        log.info("modify service start - {}", sboard);
        return sboardMapper.modify(sboard);
    }

    @Transactional
    public boolean removeService(Long boardNo) {
        log.info("remove service start - {}", boardNo);

       /* // 댓글 먼저 모두 삭제
        replyMapper.removeAll(boardNo);*/
        // 원본 게시물 삭제
        boolean remove = sboardMapper.remove(boardNo);
        return remove;
    }

    // 게시물 번호로 글쓴이 회원정보 가져오기
    public ValidateMemberDTO getMember(Long boardNo) {
        ValidateMemberDTO member = sboardMapper.findMemberByBoardNo(boardNo);
        if(member == null) member = new ValidateMemberDTO();
        return member;
    }

    private void processConverting(List<Sboard> boardList) {
        for (Sboard b : boardList) {
            setReplyCount(b);
        }
    }

    private void setReplyCount(Sboard b) {
        b.setReplyCount(replyMapper.getReplyCount(b.getBoardNo()));
    }


}
