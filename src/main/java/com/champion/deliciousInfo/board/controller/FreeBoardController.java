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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    public String getWriteForm() {
        log.info("Getmapping board/freeboard/write forwarding to freeboard-write.jsp");

        return "board/freeboard-write";
    }

    @PostMapping("/freeboard-write")
    public String write(FreeBoard freeBoard, HttpSession session, RedirectAttributes ra) {
        log.info("Postmapping board/freeboard/write -{}", freeBoard);
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        freeBoard.setWriter(member.getAccount());
        boolean flag = freeBoardService.regist(freeBoard);
        ra = flag ? ra.addFlashAttribute("msg", "등록성공")
                : ra.addFlashAttribute("msg", "등록실패");
        return "redirect:/board/freeBoard";
    }

    //상세보기
    @GetMapping("freeboard-detail/{freeboardNo}")
    public String detail(@PathVariable int freeboardNo, Model model, @ModelAttribute("p") Page page
            , HttpServletResponse response, HttpServletRequest request) {
        log.info("GetMapping board/freeboard-detail/{}", freeboardNo);
        FreeBoard freeBoard = freeBoardService.findone(freeboardNo,request,response);
        model.addAttribute("fb", freeBoard);

        return "board/freeboard-detail";
    }

    // 게시물 삭제 확인 요청
    @GetMapping("/freeboard-delete")
    public String delete(@ModelAttribute("freeboardNo") int freeboardNo, Model model) {

        log.info("controller request /board/delete GET! - bno: {}", freeboardNo);

        model.addAttribute("validate", freeBoardService.getMember(freeboardNo));

        return "board/freeboard-process-delete";
    }

    // 게시물 삭제 확정 요청
    @PostMapping("/freeboard-delete")
    public String delete(int freeboardNo) {
        log.info("controller request /board/delete POST! - bno: {}", freeboardNo);

        return freeBoardService.removeService(freeboardNo) ? "redirect:/board/freeBoard" : "redirect:/food-main";
    }

    // 수정 화면 요청
    @GetMapping("/freeboard-modify")
    public String modify(int freeboardNo, Model model
            , HttpServletResponse response, HttpServletRequest request) {
        log.info("controller request /freeboard-modify GET! - bno: {}", freeboardNo);
        FreeBoard freeBoard = freeBoardService.findone(freeboardNo,request,response);
        log.info("find article: {}", freeBoard);

        model.addAttribute("fb", freeBoard);
        model.addAttribute("validate", freeBoardService.getMember(freeboardNo));

        return "board/freeboard-modify";
    }

    // 수정 처리 요청
    @PostMapping("/freeboard-modify")
    public String modify(FreeBoard freeBoard) {
        log.info("controller request /board/modify POST! - {}", freeBoard);
        boolean flag = freeBoardService.modify(freeBoard);
        return flag ? "redirect:/board/freeboard-detail/" + freeBoard.getFreeboardNo() : "redirect:/food-main";
    }

}
