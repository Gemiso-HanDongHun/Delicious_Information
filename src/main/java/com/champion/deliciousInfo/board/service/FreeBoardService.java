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

    public FreeBoard findone(int freeboardNo) {
        log.info("start findoneservice");
        FreeBoard ffindone = freeBoardMapper.findone(freeboardNo);

        return ffindone;
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
