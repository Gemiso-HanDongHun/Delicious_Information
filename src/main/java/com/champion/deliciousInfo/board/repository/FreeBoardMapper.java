package com.champion.deliciousInfo.board.repository;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FreeBoardMapper {

    List<FreeBoard> findAll();

}
