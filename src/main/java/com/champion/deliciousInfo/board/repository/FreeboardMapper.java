package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.Freeboard;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.search.Search;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FreeboardMapper {

    // 게시글 쓰기 기능
//    boolean save(Freeboard board);

    // 게시글 전체 조회
//    List<Freeboard> findAll();

    List<Freeboard> search(Search search);

    // 게시글 전체 조회 with paging
//    List<Freeboard> findAll(Page page);

    // 게시글 전체 조회 with searching
//    List<Freeboard> findAll2(Search search);

}
