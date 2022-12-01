package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.board.repository.FreeBoardMapper;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.reply.repository.FreeReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.AttributedString;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@Log4j2
@RequiredArgsConstructor
public class FreeBoardService {

    private final FreeBoardMapper freeBoardMapper;

    private final FreeReplyMapper freeReplyMapper;

    public Map<String, Object> search(Search search) {
        log.info("search service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<FreeBoard> freeBoardList = freeBoardMapper.search(search);
        processConverting(freeBoardList);

        findDataMap.put("fbList", freeBoardList);
        findDataMap.put("tc", freeBoardMapper.getTotalCount(search));

        return findDataMap;
    }

    public boolean regist(FreeBoard freeBoard) {
        log.info("freeboard reigst start -{}", freeBoard);
        boolean flag = freeBoardMapper.regist(freeBoard);
        return flag;
    }

    public FreeBoard findone(int freeboardNo, HttpServletRequest request, HttpServletResponse response) {
        log.info("start findoneservice");
        FreeBoard ffindone = freeBoardMapper.findone(freeboardNo);

        makeViewCount(freeboardNo,  response, request);
        return ffindone;
    }

    private void makeViewCount(int boardNo, HttpServletResponse response, HttpServletRequest request) {
        // 쿠키를 조회 - 해당 이름의 쿠키가 있으면 쿠키가 들어오고 없으면 null이 들어옴
        Cookie foundCookie = WebUtils.getCookie(request, "b" + boardNo);

        if (foundCookie == null) {
            freeBoardMapper.upViewCount(boardNo);

            Cookie cookie = new Cookie("b" + boardNo, String.valueOf(boardNo));// 쿠키 생성
            cookie.setMaxAge(60); // 쿠키 수명 설정
            cookie.setPath("/board/freeboard-detail"); // 쿠키 작동 범위

            response.addCookie(cookie); // 클라이언트에 쿠키 전송
        }
    }

    // 자유게시판 수정
    public boolean modify(FreeBoard freeBoard) {
        log.info("freeboard modify");
        return freeBoardMapper.modify(freeBoard);
    }

    // 게시물 번호로 글쓴이 회원정보 가져오기
    public ValidateMemberDTO getMember(int freeboardNo) {
        ValidateMemberDTO member = freeBoardMapper.findMemberByfreeBoardNo(freeboardNo);
        if (member == null) member = new ValidateMemberDTO();
        return member;
    }

    @Transactional
    public boolean removeService(int freeboardNo) {
        log.info("remove service start - {}", freeboardNo);

       /* // 댓글 먼저 모두 삭제
        replyMapper.removeAll(boardNo);*/
        // 원본 게시물 삭제
        boolean remove = freeBoardMapper.remove(freeboardNo);
        return remove;
    }

    private void processConverting(List<FreeBoard> freeBoardList){
        for (FreeBoard f : freeBoardList){
            setReplyCount(f);
        }
    }

    private void setReplyCount(FreeBoard f){
        f.setReplyCount(freeReplyMapper.getReplyCount((long) f.getFreeboardNo()));
    }


}
