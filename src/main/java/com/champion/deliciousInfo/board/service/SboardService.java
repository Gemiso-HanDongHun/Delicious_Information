package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.board.repository.SboardMapper;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class SboardService {

    private final SboardMapper sboardMapper;

    public List<Sboard> findAll(){
        log.info("sboard findALL start");
        List<Sboard> sboardList = sboardMapper.findAll();
        return sboardList;
    }
    public Map<String, Object> search(Search search) {
        log.info("sboard findALL service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Sboard> sboardList = sboardMapper.search(search);

        findDataMap.put("sl", sboardList);
        findDataMap.put("tc", sboardMapper.getTotalCount(search));

        return findDataMap;
    }

    public Sboard findOne(Long boardNo){
        log.info("sboard findOne service start");
        Sboard foundOne = sboardMapper.findOne(boardNo);
        return foundOne;
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



}
