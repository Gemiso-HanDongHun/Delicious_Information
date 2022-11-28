package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.service.FreeBoardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.member.domain.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board")
public class FreeBoardController {

    private final FreeBoardService freeBoardService;

    @GetMapping("/freeBoard")
    public String list(Model model, @ModelAttribute("s") Search search) {
        log.info("controller request /board/freeBoard GET! - search : {}", search);
        Map<String, Object> freeBoardMap = freeBoardService.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(), search.getAmount()), (Integer) freeBoardMap.get("tc"));
        model.addAttribute("fbList", freeBoardMap.get("fbList"));
        model.addAttribute("fbpm", pm);

        return "board/free-board";
    }

    @GetMapping("/freeboard-write")
    public String getWriteForm(){
        log.info("Getmapping board/freeboard/write forwarding to sboard-write.jsp");

        return "board/freeboard-write";
    }

    @PostMapping("/freeboard-write")
    public String write(FreeBoard freeBoard, HttpSession session, RedirectAttributes ra){
        log.info("Postmapping board/freeboard/write -{}",freeBoard);
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        freeBoard.setWriter(member.getAccount());
        boolean flag = freeBoardService.regist(freeBoard);
        ra= flag? ra.addFlashAttribute("msg","등록성공")
                : ra.addFlashAttribute("msg","등록실패");
        return "redirect:board/freeBoard";
    }

    @GetMapping("freeboard-detail/{freeboard_no}")
    public String detail(@PathVariable int freeboard_no, Model model){
        log.info("GetMapping board/freeboard-detail/{}", freeboard_no);
        FreeBoard freeBoard = freeBoardService.findone(freeboard_no);
        model.addAttribute("fd", freeBoard);

        return "board/freeboard-detail";
    }

}
