package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.common.search.Search;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InfoBoardMapper {

    List<InfoBoard> findAll();

    List<InfoBoard> search(Search search);

    InfoBoard findOne(Long infoNo);

    //검색 조회 count 처리
    int getTotalCount(Search search);

    // 목록 단일 조회
    InfoBoard findOne(int infoNo);

   /* // insert 구문
    boolean save(InfoBoard infoBoard);

    //update 구문 img파일 수정 안 할  경우
    boolean modify(InfoBoard infoBoard);

    //delete 구문
    boolean remove(int infoNo);*/

}