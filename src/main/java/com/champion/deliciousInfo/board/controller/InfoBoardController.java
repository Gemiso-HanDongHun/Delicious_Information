package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.service.InfoBoardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board/infoBoard")
public class InfoBoardController {

    private final InfoBoardService service;


    @GetMapping("")
    public String list(Model model, @ModelAttribute("s") Search search) {
        log.info("controller request /board/infoBoard GET! - search: {}", search);
        Map<String, Object> infoMap = service.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) infoMap.get("tc"));
        model.addAttribute("infoList",infoMap.get("infoList") );
        model.addAttribute("inpm", pm);
        return "board/info-board";
    }

    @GetMapping("/detail/{infoNo}")
    public String getContent(@PathVariable Long infoNo, Model model, @ModelAttribute("p") Page page){
        log.info("GetMapping board/suggestionBoard/detail/{}", infoNo);
        InfoBoard findOne = service.findOne(infoNo);
        model.addAttribute("fo",findOne);
        return "board/info-board-detail";
    }

    @GetMapping("/write")
    public String write() {
        return "board/info-board-write";
    }


    @GetMapping("/delete")
    public String delete(@ModelAttribute("infoNo") Long infoNo, Model model) {

        log.info("controller request /board/delete GET! - infoNo: {}", infoNo);

        model.addAttribute("validate", service.getMember(infoNo));

        return "board/info-board-process-delete";
    }

    // 게시물 삭제 확정 요청
    @PostMapping("/delete")
    public String delete(Long infoNo) {
        log.info("controller request /board/delete POST! - bno: {}", infoNo);

        return service.removeService(infoNo) ? "redirect:/board/infoBoard" : "redirect:/food-main";
    }

    @GetMapping("/modify")
    public String modify(Long infoNo, Model model) {
        log.info("controller request /board/modify GET! - bno: {}", infoNo);
        InfoBoard infoBoard = service.findOne(infoNo);
        log.info("find article: {}", infoBoard);

        model.addAttribute("fo", infoBoard);
        model.addAttribute("validate", service.getMember(infoNo));

        return "board/info-board-modify";
    }


    @PostMapping("/modify")
    public String modify(InfoBoard infoBoard) {
        log.info("controller request /board/modify POST! - {}", infoBoard);
        boolean flag = service.modifyService(infoBoard);
        return flag ? "redirect:/board/infoBoard/detail/" + infoBoard.getInfoNo() : "redirect:/food-main";
    }
}
