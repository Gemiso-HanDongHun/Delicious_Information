package com.champion.deliciousInfo.reply.api;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.reply.domain.InfoReply;
import com.champion.deliciousInfo.reply.service.InfoReplyService;
import com.champion.deliciousInfo.util.LoginUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/api/v1/inforeplies")
@CrossOrigin
public class InfoReplyApiController {

    private final InfoReplyService infoReplyService;

    @GetMapping("")
    public Map<String, Object> list(Long infoNo, Page page) {
        page.setAmount(5);
        log.info("/api/v1/replies GET! bno={}, page={}", infoNo, page);
        Map<String, Object> replies = infoReplyService.getList(infoNo, page);
        return replies;
    }

    @PostMapping("")
    public String create(@RequestBody InfoReply infoReply, HttpSession session) {

        infoReply.setReplyWriter(LoginUtils.getCurrentMemberAccount(session));
        log.info("/api/v1/replies POST! - {}", infoReply);
        boolean flag = infoReplyService.write(infoReply);
        return flag ? "insert-success" : "insert-fail";
    }

    @PutMapping("/{rno}")
    public String modify(@PathVariable Long rno, @RequestBody InfoReply infoReply) {

        infoReply.setReplyNo(rno);
        log.info("/api/v1/replies PUT! - {}", infoReply);
        boolean flag = infoReplyService.modify(infoReply);
        return flag ? "mod-success" : "mod-fail";
    }

    @DeleteMapping("/{rno}")
    public String delete(@PathVariable Long rno) {

        log.info("/api/v1/replies DELETE! - {}", rno);
        boolean flag = infoReplyService.remove(rno);
        return flag ? "del-success" : "del-fail";
    }
}
