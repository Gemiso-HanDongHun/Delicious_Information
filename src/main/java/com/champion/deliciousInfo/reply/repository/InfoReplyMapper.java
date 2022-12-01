package com.champion.deliciousInfo.reply.repository;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.reply.domain.InfoReply;
import com.champion.deliciousInfo.reply.domain.Reply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface InfoReplyMapper {

    boolean save(InfoReply infoReply);
    //댓글 수정
    boolean modify(InfoReply infoReply);
    //댓글 삭제
    boolean remove(Long replyNo);
    //댓글 전체 삭제
    boolean removeAll(Long infoNo);
    //댓글 개별 조회
    InfoReply findOne(Long replyNo);
    //댓글 목록 조회
    List<InfoReply> findAll(@Param("infoNo") Long infoNo
            , @Param("page") Page page);

    // 댓글 수 조회
    int getReplyCount(Long infoNo);
}
