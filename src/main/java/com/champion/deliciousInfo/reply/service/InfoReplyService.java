package com.champion.deliciousInfo.reply.service;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.reply.domain.InfoReply;
import com.champion.deliciousInfo.reply.repository.InfoReplyMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class InfoReplyService {

    private final InfoReplyMapper infoReplyMapper;

    public Map<String, Object> getList(Long infoNo, Page page) {
        PageMaker pageMaker = new PageMaker(page, getCount(infoNo));

        Map<String, Object> replyMap = new HashMap<>();
        replyMap.put("replyList", infoReplyMapper.findAll(infoNo, page));
        replyMap.put("maker", pageMaker);
        replyMap.put("count", infoReplyMapper.getReplyCount(infoNo));

        return replyMap;
    }

    // 댓글 총 개수 조회
    public int getCount(Long infoNo) {
        return infoReplyMapper.getReplyCount(infoNo);
    }

    // 댓글 개별 조회
    public InfoReply get(Long replyNo) {
        return infoReplyMapper.findOne(replyNo);
    }

    // 댓글 쓰기 중간처리
    public boolean write(InfoReply infoReply) {
        return infoReplyMapper.save(infoReply);
    }

    // 댓글 수정 중간처리
    public boolean modify(InfoReply infoReply) {
        return infoReplyMapper.modify(infoReply);
    }

    // 댓글 삭제 중간처리
    public boolean remove(Long replyNo) {
        return infoReplyMapper.remove(replyNo);
    }
}
