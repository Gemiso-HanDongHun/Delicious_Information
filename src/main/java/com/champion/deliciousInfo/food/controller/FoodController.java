package com.champion.deliciousInfo.food.controller;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@Controller
@RequestMapping("/food")
@Log4j2
public class FoodController {

    private final FoodService service;


    // 전체 목록 가져오기
    @GetMapping("/list")
    public String list(Model model, Page page,
    @ModelAttribute ("search")Search search) {
        log.info("controller request /food/list GET! - search: {}", search);
        Map<String, Object> foodMap = service.findAllService(page);

       PageMaker pm = new PageMaker(page, (Integer) foodMap.get("tc"));

        model.addAttribute("fList",foodMap.get("fList") );
        model.addAttribute("pm", pm);


        return "food/food-list";
    }




    // 한개 상세정보 가져오기
    /*@GetMapping("/listOne")
    public String listOne(Model model, int foodNo) {
        Food food = service.getListOne(foodNo);
        model.addAttribute("fOne", food);
        return null;
    }*/

}
