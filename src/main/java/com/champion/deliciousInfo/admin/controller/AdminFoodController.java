package com.champion.deliciousInfo.admin.controller;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.exception.ExcelException;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.service.FoodNutrientService;
import com.champion.deliciousInfo.food.service.FoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
@RequestMapping("/admin/food")
@Log4j2
@RequiredArgsConstructor
public class AdminFoodController {
    private final FoodService foodService;

    private final FoodNutrientService foodNutrientService;


    @GetMapping("/list")
    public String getFoodList(Model model, @ModelAttribute("s") Search search) {
        log.info("GetMapping admin/food forwarding to foodList.jsp ");
        Map<String, Object> foodMap = foodService.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) foodMap.get("tc"));
        model.addAttribute("foodList",foodMap.get("fList") );
        model.addAttribute("pm", pm);
        return "admin/food/food-list";
    }

    @GetMapping("/write")
    public String getWriteForm() {
        log.info("GetMapping admin/food/write forwarding to food-Write.jsp");
        return "admin/food/food-write";
    }

    @PostMapping("/write")
    public String write(Food food, FoodNutrient fn, RedirectAttributes ra,
                        @RequestParam("file") MultipartFile file
    ) {
        log.info("PostMapping admin/food/write forwarding to food-list.jsp-{} -{}", food, fn);
        log.info("file - {}", file.getOriginalFilename());

        boolean flag = foodService.insert(food, fn, file);
        ra = flag ?
                ra.addFlashAttribute("msg", "등록성공")
                : ra.addFlashAttribute("msg", "등록실패");
        return "redirect:/admin/food/list";
    }

    @PostMapping("/write/excel")
    public String writeByExcel(RedirectAttributes ra,
                               @RequestParam("excel") MultipartFile excel
    ) {
        log.info("PostMapping admin/food/writebyExcel {} ", excel);
        log.info("file - {}", excel.getOriginalFilename());

        boolean flag = foodService.insertByExcel(excel);
        ra = flag ?
                ra.addFlashAttribute("msg", "등록성공")
                : ra.addFlashAttribute("msg", "등록실패");
        return "redirect:/admin/food/list";
    }

    @GetMapping("/detail/{foodNo}")
    public String getFoodList(@PathVariable int foodNo, Model model) {
        log.info("GetMapping admin/food/detail/{foodNo} forwarding to foodDetail -{} ", foodNo);
        FoodNutrient foodNutrient = foodNutrientService.findOne(foodNo);
        model.addAttribute("fn", foodNutrient);
        return "admin/food/food-detail";
    }

    @PostMapping("/modify/{foodNo}")
    public String modify(Food food, FoodNutrient fn,
                         @PathVariable int foodNo,
                         RedirectAttributes ra,
                         @RequestParam("file") MultipartFile file) {
        log.info("PostMapping admin/food/modify/{foodNo} modify -{},{},{} ", food,fn, file);
        food.setFoodNo(foodNo);
        boolean flag = false;
        if (file.getOriginalFilename().equals("")) {
            flag = foodService.modify(food,fn);
            log.info("modify 실행 -{}");

        } else {
            flag = foodService.modify(food, fn, file);
            log.info("modifyfile 실행 -{}");

        }
        ra = flag ? ra.addFlashAttribute("msg", "수정성공")
                : ra.addFlashAttribute("msg", "수정실패");
        log.info("flag value -{}", flag);
        return "redirect:/admin/food/list";
    }

    @PostMapping("/delete/{foodNo}")
    public String delete(@PathVariable int foodNo, int nutrientNo, RedirectAttributes ra) {
        log.info("PostMapping admin/food/delete/{foodNo} modify -{},{} ", foodNo,nutrientNo);
        boolean flag = foodService.remove(foodNo,nutrientNo);
        ra = flag ? ra.addFlashAttribute("msg", "삭제성공")
                : ra.addFlashAttribute("msg", "삭제실패");
        return "redirect:/admin/food/list";
    }

    @ExceptionHandler(ExcelException.class)
    public String getExcelExeption(Exception e,Model model){
        model.addAttribute("msg",e.getMessage());
        return "error/excel-error";
    }

}
