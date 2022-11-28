package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.repository.FreeBoardMapper;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.text.AttributedString;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@Log4j2
@RequiredArgsConstructor
public class FreeBoardService {

    private final FreeBoardMapper freeBoardMapper;

    // 게시물 전체 조회 요청 중간 처리
//    public List<FreeBoard> findAll() {
//
//        log.info("findAll service start");
//        List<FreeBoard> freeboardList = freeBoardMapper.findAll();
//        return freeboardList;
//    }

    public Map<String, Object> search(Search search){
        log.info("search service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<FreeBoard> freeBoardList = freeBoardMapper.search(search);

        findDataMap.put("fbList", freeBoardList);
        findDataMap.put("tc", freeBoardMapper.getTotalCount(search));

        return findDataMap;
    }

    public boolean regist(FreeBoard freeBoard){
        log.info("sboard reigst start -{}",freeBoard);
        boolean flag = freeBoardMapper.regist(freeBoard);
        return flag;
    }

    public FreeBoard findone(int freeboard_no){
        log.info("start findoneservice");
        FreeBoard ffindone = freeBoardMapper.findone(freeboard_no);

        return ffindone;
    }


}