package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.repository.FreeboardMapper;
import com.champion.deliciousInfo.board.domain.Freeboard;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class FreeboardService {

    private final FreeboardMapper freeBoardMapper;

    // 게시물 전체 조회 요청 중간 처리
//    public List<Freeboard> findAll() {
//        log.info("findAll service start");
//        List<Freeboard> freeboardList = freeBoardMapper.findAll();
//
//        // 목록 중간 데이터처리
////        processConverting(boardList);
//
//        return freeboardList;
//    }


    public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Freeboard> freeboardList = freeBoardMapper.search(search);

        findDataMap.put("fbList", freeboardList);
//      findDataMap.put("tc", freeBoardMapper.getTotalCount(search));

        return findDataMap;
    }


}
