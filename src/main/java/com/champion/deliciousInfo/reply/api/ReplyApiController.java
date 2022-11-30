package com.champion.deliciousInfo.reply.api;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.reply.domain.Reply;
import com.champion.deliciousInfo.reply.service.ReplyService;
import com.champion.deliciousInfo.util.LoginUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/api/v1/replies")
@CrossOrigin
public class ReplyApiController {

    private final ReplyService replyService;

    /*
        - 댓글 목록 조회요청 : /api/v1/replies - GET
        - 댓글 개별 조회요청 : /api/v1/replies/72 - GET
        - 댓글 쓰기 요청 : /api/v1/replies - POST
        - 댓글 수정 요청 : /api/v1/replies/72 - PUT
        - 댓글 삭제 요청 : /api/v1/replies/72 - DELETE
     */

    // 댓글 목록 요청
    @GetMapping("")
    public Map<String, Object> list(Long boardNo, Page page) {
        page.setAmount(5);
        log.info("/api/v1/replies GET! bno={}, page={}", boardNo, page);
        Map<String, Object> replies = replyService.getList(boardNo, page);
        return replies;
    }


    // 댓글 등록 요청
    @PostMapping("")
    public String create(@RequestBody Reply reply, HttpSession session) {

        reply.setReplyWriter(LoginUtils.getCurrentMemberAccount(session));
        log.info("/api/v1/replies POST! - {}", reply);
        boolean flag = replyService.write(reply);
        return flag ? "insert-success" : "insert-fail";
    }

    // 댓글 수정 요청
    @PutMapping("/{rno}")
    public String modify(@PathVariable Long rno, @RequestBody Reply reply) {

        reply.setReplyNo(rno);
        log.info("/api/v1/replies PUT! - {}", reply);
        boolean flag = replyService.modify(reply);
        return flag ? "mod-success" : "mod-fail";
    }

    // 댓글 삭제 요청
    @DeleteMapping("/{rno}")
    public String delete(@PathVariable Long rno) {

        log.info("/api/v1/replies DELETE! - {}", rno);
        boolean flag = replyService.remove(rno);
        return flag ? "del-success" : "del-fail";
    }
}
