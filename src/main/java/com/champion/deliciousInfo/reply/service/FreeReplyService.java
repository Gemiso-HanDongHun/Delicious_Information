package com.champion.deliciousInfo.reply.service;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.reply.domain.FreeReply;
import com.champion.deliciousInfo.reply.repository.FreeReplyMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class FreeReplyService {

    private final FreeReplyMapper freeReplyMapper;

    public Map<String, Object> getList(Long fboardNo, Page page) {
        PageMaker pageMaker = new PageMaker(page, getCount(fboardNo));

        Map<String, Object> replyMap = new HashMap<>();
        replyMap.put("replyList", freeReplyMapper.findAll(fboardNo, page));
        replyMap.put("maker", pageMaker);
        replyMap.put("count", freeReplyMapper.getReplyCount(fboardNo));

        return replyMap;
    }

    // 댓글 총 개수 조회
    public int getCount(Long fboardNo) {
        return freeReplyMapper.getReplyCount(fboardNo);
    }

    // 댓글 개별 조회
    public FreeReply get(Long replyNo) {
        return freeReplyMapper.findOne(replyNo);
    }

    // 댓글 쓰기 중간처리
    public boolean write(FreeReply freeReply) {
        return freeReplyMapper.save(freeReply);
    }

    // 댓글 수정 중간처리
    public boolean modify(FreeReply freeReply) {
        return freeReplyMapper.modify(freeReply);
    }

    // 댓글 삭제 중간처리
    public boolean remove(Long replyNo) {
        return freeReplyMapper.remove(replyNo);
    }

}
