package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.board.repository.InfoBoardMapper;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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


    public InfoBoard findOne(Long infoNo){
        log.info("InfoBoard findOne service start");
        InfoBoard findOne = boardMapper.findOne(infoNo);
        return findOne;
    }

    public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<InfoBoard> infoBoardList = boardMapper.search(search);

        findDataMap.put("infoList", infoBoardList);
        findDataMap.put("tc", boardMapper.getTotalCount(search));

        return findDataMap;
    }

    public boolean modifyService(InfoBoard infoBoard) {
        log.info("modify service start - {}", infoBoard);
        return boardMapper.modify(infoBoard);
    }

    @Transactional
    public boolean removeService(Long infoNo) {
        log.info("remove service start - {}", infoNo);

       /* // 댓글 먼저 모두 삭제
        replyMapper.removeAll(boardNo);*/
        // 원본 게시물 삭제
        boolean remove = boardMapper.remove(infoNo);
        return remove;
    }

    // 게시물 번호로 글쓴이 회원정보 가져오기
    public ValidateMemberDTO getMember(Long infoNo) {
        ValidateMemberDTO member = boardMapper.findMemberByBoardNo(infoNo);
        if(member == null) member = new ValidateMemberDTO();
        return member;
    }
}
