package com.champion.deliciousInfo.board.controller;


import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.service.SboardService;
import com.champion.deliciousInfo.member.domain.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

import java.util.List;

import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board/suggestionBoard")
public class SuggestBoardController {

    private final SboardService sboardService;


    @GetMapping("")
    public String getList(Model model){
        log.info("GetMapping board/sboard/list forwarding to sboard-list.jsp");
        List<Sboard> sboardList = sboardService.findAll();
        model.addAttribute("sl",sboardList);
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


}
