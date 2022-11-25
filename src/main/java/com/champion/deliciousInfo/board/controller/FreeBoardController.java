package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.service.FreeBoardService;
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

import java.util.List;
import java.util.Map;

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


}
