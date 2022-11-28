package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.service.InfoBoardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @GetMapping("/write")
    public String write() {
        return "board/info-board-write";
    }

    @GetMapping("/update")
    public String detail() {
        return "board/info-board-update";
    }
}
