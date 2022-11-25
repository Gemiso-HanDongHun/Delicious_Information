package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.repository.FreeBoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Log4j2
@RequiredArgsConstructor
public class FreeBoardService {

    private final FreeBoardMapper freeBoardMapper;

    // 게시물 전체 조회 요청 중간 처리
    public List<FreeBoard> findAll() {

        log.info("findAll service start");
        List<FreeBoard> freeboardList = freeBoardMapper.findAll();
        return freeboardList;
    }
}
