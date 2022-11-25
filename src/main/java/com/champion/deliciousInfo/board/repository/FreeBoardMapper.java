package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.common.search.Search;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FreeBoardMapper {

    List<FreeBoard> findAll();

    List<FreeBoard> search(Search search);

    int getTotalCount(Search search);

    boolean regist(FreeBoard freeBoard);

}
