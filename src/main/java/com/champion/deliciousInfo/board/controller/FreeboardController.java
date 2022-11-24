package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.service.FreeboardService;
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
@RequestMapping("/board")
public class FreeboardController {

    private final FreeboardService freeboardService;

    @GetMapping("/free-board")
    public String list(Model model, @ModelAttribute("s") Search search) {
        log.info("controller request /food/list GET! - search: {}", search);
        Map<String, Object> freeboardMap = freeboardService.search(search);
//        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) freeboardMap.get("tc"));
        model.addAttribute("fbList", freeboardMap.get("fbList"));
//        model.addAttribute("pm", pm);
        return "board/free-board";
    }
}
