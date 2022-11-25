package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SboardMapper {

    List<Sboard> findAll();
    Sboard findOne(Long boardNo);
    List<Sboard> search(Search search);

    int getTotalCount(Search search);
    boolean regist(Sboard sboard);
}
