package com.champion.deliciousInfo.reply.repository;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.reply.domain.FreeReply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface FreeReplyMapper {

    // 댓글 입력
    boolean save(FreeReply freeReply);

    // 댓글 수정
    boolean modify(FreeReply freeReply);

    // 댓글 삭제
    boolean remove(Long replyNo);

    // 댓글 전체 삭제
    boolean removeAll(Long replyNo);

    // 댓글 개별 조회
    FreeReply findOne(Long replyNo);

    List<FreeReply> findAll(@Param("fboardNo") Long fboardNo
            , @Param("page") Page page);

    // 댓글 수 조회
    int getReplyCount(Long fboardNo);

}
