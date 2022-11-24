package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.repository.InfoBoardMapper;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Log4j2
public class InfoBoardService {

    private final InfoBoardMapper boardMapper;

    public List<InfoBoard> findAllService() {
        List<InfoBoard> infoBoardList = boardMapper.findAll();
        return infoBoardList;
    }


    public InfoBoard findOne(int infoNo) {
        InfoBoard infoBoard = boardMapper.findOne(infoNo);
        return infoBoard;
    }

    public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<InfoBoard> infoBoardList = boardMapper.search(search);

        findDataMap.put("infoList", infoBoardList);
        findDataMap.put("tc", boardMapper.getTotalCount(search));

        return findDataMap;
    }
}
