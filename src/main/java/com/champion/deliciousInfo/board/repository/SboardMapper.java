package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.Sboard;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SboardMapper {

    List<Sboard> findAll();
    boolean regist(Sboard sboard);
}
