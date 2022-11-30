package com.champion.deliciousInfo.board.controller;


import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.service.SboardService;
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
@RequestMapping("/board/suggestionBoard")
public class SuggestBoardController {

    private final SboardService sboardService;


    @GetMapping("")
    public String getList(Model model, @ModelAttribute("s") Search search){
        log.info("GetMapping board/sboard/list forwarding to sboard-list.jsp");
        Map<String, Object> sboardMap = sboardService.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) sboardMap.get("tc"));
        model.addAttribute("sl",sboardMap.get("sl") );
        model.addAttribute("pm", pm);
        log.info("sl-{}",model.getAttribute("sl"));
        return "board/sboard-list";
    }

    @GetMapping("/write")
    public String getWriteForm(){
        log.info("Getmapping board/sboard/write forwarding to sboard-write.jsp");

        return "board/sboard-write";
    }

    @PostMapping("/write")
    public String write(Sboard sboard, HttpSession session, RedirectAttributes ra){
        log.info("Postmapping board/sboard/write -{}",sboard);
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        sboard.setWriter(member.getAccount());
        boolean flag = sboardService.regist(sboard);
        ra= flag? ra.addFlashAttribute("msg","등록성공")
                : ra.addFlashAttribute("msg","등록실패");
        return "redirect:/board/suggestionBoard";
    }

    @GetMapping("/detail/{boardNo}")
    public String getContent(@PathVariable Long boardNo,Model model, @ModelAttribute("p") Page page){
        log.info("GetMapping board/suggestionBoard/detail/{}", boardNo);
        Sboard foundOne = sboardService.findOne(boardNo);
        model.addAttribute("sb",foundOne);
        return "board/sboard-detail";
    }

    // 게시물 삭제 확인 요청
    @GetMapping("/delete")
    public String delete(@ModelAttribute("boardNo") Long boardNo, Model model) {

        log.info("controller request /board/delete GET! - bno: {}", boardNo);

        model.addAttribute("validate", sboardService.getMember(boardNo));

        return "board/sboard-process-delete";
    }

    // 게시물 삭제 확정 요청
    @PostMapping("/delete")
    public String delete(Long boardNo) {
        log.info("controller request /board/delete POST! - bno: {}", boardNo);

        return sboardService.removeService(boardNo) ? "redirect:/board/suggestionBoard" : "redirect:/food-main";
    }

    // 수정 화면 요청
    @GetMapping("/modify")
    public String modify(Long boardNo, Model model) {
        log.info("controller request /board/modify GET! - bno: {}", boardNo);
        Sboard sboard = sboardService.findOne(boardNo);
        log.info("find article: {}", sboard);

        model.addAttribute("sb", sboard);
        model.addAttribute("validate", sboardService.getMember(boardNo));

        return "board/sboard-modify";
    }

    // 수정 처리 요청
    @PostMapping("/modify")
    public String modify(Sboard board) {
        log.info("controller request /board/modify POST! - {}", board);
        boolean flag = sboardService.modifyService(board);
        return flag ? "redirect:/board/suggestionBoard/detail/" + board.getBoardNo() : "redirect:/food-main";
    }

}
