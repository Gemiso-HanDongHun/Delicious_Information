package com.champion.deliciousInfo.reply.api;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.reply.domain.FreeReply;
import com.champion.deliciousInfo.reply.domain.Reply;
import com.champion.deliciousInfo.reply.service.FreeReplyService;
import com.champion.deliciousInfo.util.LoginUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/api/v1/freereplies")
@CrossOrigin
public class FreeReplyApiController {

    private final FreeReplyService freeReplyService;

     /*
        - 댓글 목록 조회요청 : /api/v1/replies - GET
        - 댓글 개별 조회요청 : /api/v1/replies/72 - GET
        - 댓글 쓰기 요청 : /api/v1/replies - POST
        - 댓글 수정 요청 : /api/v1/replies/72 - PUT
        - 댓글 삭제 요청 : /api/v1/replies/72 - DELETE
     */

    // 댓글 목록 요청
    @GetMapping("")
    public Map<String, Object> list(Long fboardNo, Page page) {
        page.setAmount(5); // 댓글 5개만
        log.info("/api/v1/replies GET! bno={}, page={}", fboardNo, page);
        Map<String, Object> replies = freeReplyService.getList(fboardNo, page);
        List<FreeReply> replyList =(List<FreeReply>) replies.get("replyList");
        log.info("replies-{}",replyList);

        return replies;
    }

    // 댓글 등록 요청
    @PostMapping("")
    public String create(@RequestBody FreeReply freeReply, HttpSession session) {

        freeReply.setReplyWriter(LoginUtils.getCurrentMemberAccount(session));
        log.info("/api/v1/freereplies POST! - {}", freeReply);
        boolean flag = freeReplyService.write(freeReply);
        return flag ? "insert-success" : "insert-fail";
    }

    // 댓글 수정 요청
    @PutMapping("/{rno}")
    public String modify(@PathVariable Long rno, @RequestBody FreeReply freeReply) {

        freeReply.setReplyNo(rno);
        log.info("/api/v1/replies PUT! - {}", freeReply);
        boolean flag = freeReplyService.modify(freeReply);
        return flag ? "mod-success" : "mod-fail";
    }

    // 댓글 삭제 요청
    @DeleteMapping("/{rno}")
    public String delete(@PathVariable Long rno) {

        log.info("/api/v1/replies DELETE! - {}", rno);
        boolean flag = freeReplyService.remove(rno);
        return flag ? "del-success" : "del-fail";
    }

}
