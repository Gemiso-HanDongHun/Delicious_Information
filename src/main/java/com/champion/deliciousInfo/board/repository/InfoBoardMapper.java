package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.common.search.Search;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InfoBoardMapper {

    List<InfoBoard> findAll();

    List<InfoBoard> search(Search search);

    InfoBoard findOne(Long infoNo);

    // 조회수 상승 처리
    void upViewCount(Long infoNo);

    //검색 조회 count 처리
    int getTotalCount(Search search);

    boolean regist(InfoBoard infoBoard);

    boolean remove(Long infoNo);

    boolean modify(InfoBoard infoBoard);

    ValidateMemberDTO findMemberByBoardNo(Long infoNo);
}
