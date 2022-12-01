package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.common.search.Search;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FreeBoardMapper {

    List<FreeBoard> findAll();

    List<FreeBoard> search(Search search);

    int getTotalCount(Search search);

    boolean regist(FreeBoard freeBoard);

    FreeBoard findone(int freeboardNo);

    // 조회수 상승 처리
    void upViewCount(int freeboardNo);


    boolean modify(FreeBoard freeBoard);

    boolean remove (int freeboardNo);

    // 게시물 번호로 게시글 작성자의 계정명과 권한 가져오기
    ValidateMemberDTO findMemberByfreeBoardNo(int freeboardNo);

}
