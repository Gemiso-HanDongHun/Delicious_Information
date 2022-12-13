package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.service.FreeBoardService;
import com.champion.deliciousInfo.board.service.InfoBoardService;
import com.champion.deliciousInfo.board.service.SboardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.*;
import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@Controller
@RequestMapping("/food")
@Log4j2
public class FoodController {

    private final FoodService service;

    private final FreeBoardService freeBoardService;

    private final InfoBoardService infoBoardService;

    private final SboardService sboardService;

    // 전체 목록 가져오기
    @GetMapping("/list")
    public String list(Model model, @ModelAttribute ("s")Search search) {
        log.info("controller request /food/list GET! - search: {}", search);
        Map<String, Object> foodMap = service.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) foodMap.get("tc"));
        List<FreeBoard> freeBoardList = freeBoardService.findAllService();

        model.addAttribute("fList",foodMap.get("fList") );
        model.addAttribute("AllfbList", freeBoardList);
        model.addAttribute("pm", pm);
        return "food/food-list";
    }



}
