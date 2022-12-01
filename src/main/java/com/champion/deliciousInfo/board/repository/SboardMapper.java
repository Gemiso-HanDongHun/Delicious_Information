package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SboardMapper {

    List<Sboard> findAll();
    List<Sboard> search(Search search);
    Sboard findOne(Long boardNo);

    int getTotalCount(Search search);
    boolean regist(Sboard sboard);

    boolean remove(Long boardNo);

    // 게시글 수정
    boolean modify(Sboard sboard);

    // 게시물 번호로 게시글 작성자의 계정명과 권한 가져오기
    ValidateMemberDTO findMemberByBoardNo(Long boardNo);
}
