package com.champion.deliciousInfo.board.controller;

import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.service.InfoBoardService;
import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.mfood.domain.Mfood;
import com.champion.deliciousInfo.mfood.domain.MfoodNutrient;
import com.champion.deliciousInfo.mfood.service.MfoodService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/board/infoBoard")
public class InfoBoardController {

    private final InfoBoardService service;

    private final MfoodService mfoodService;


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
    public String getContent(@PathVariable Long infoNo, Model model, @ModelAttribute("p") Page page
            , HttpServletRequest request, HttpServletResponse response){
        log.info("GetMapping board/suggestionBoard/detail/{}", infoNo);
        Map<String, Object> foundMap = service.findOne(infoNo, request, response);
        InfoBoard findOne =(InfoBoard) foundMap.get("ib");
        MfoodNutrient mn = (MfoodNutrient) foundMap.get("mn");
        model.addAttribute("fo",findOne);
        model.addAttribute("mn",mn);
        return "board/info-board-detail";
    }

    @GetMapping("/write")
    public String write() {
        return "board/info-board-write";
    }

    @PostMapping("/write")
    public String write(InfoBoard infoBoard,Mfood food, MfoodNutrient fn, RedirectAttributes ra
                        ,HttpSession session
    ) {
        log.info("PostMapping admin/food/write forwarding to food-list.jsp-{} -{}", food, fn);
        infoBoard.setFoodName(food.getName());
        Member member = (Member) session.getAttribute(LOGIN_FLAG);
        infoBoard.setWriter(member.getAccount());
        boolean flag = mfoodService.insert(food, fn);
        boolean flag2 = service.regist(infoBoard);
        boolean flag3 = flag&&flag2;
        ra = flag3 ?
                ra.addFlashAttribute("msg", "등록성공")
                : ra.addFlashAttribute("msg", "등록실패");
        return "redirect:/board/infoBoard";
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

        return service.removeService(infoNo) ? "redirect:/board/infoBoard" : "redirect:/";
    }

    @GetMapping("/modify")
    public String modify(Long infoNo, Model model, HttpServletRequest request, HttpServletResponse response) {
        log.info("controller request /board/modify GET! - bno: {}", infoNo);
        Map<String, Object> foundDataMap = service.findOne(infoNo, request, response);
        InfoBoard infoBoard = (InfoBoard)foundDataMap.get("ib");
        log.info("find article: {}", infoBoard);
        MfoodNutrient mn = (MfoodNutrient) foundDataMap.get("mn");
        model.addAttribute("mn",mn);
        model.addAttribute("fo", infoBoard);
        model.addAttribute("validate", service.getMember(infoNo));

        return "board/info-board-modify";
    }


    @PostMapping("/modify")
    public String modify(InfoBoard infoBoard,MfoodNutrient mfoodNutrient, Mfood mfood) {
        log.info("controller request /board/modify POST! - {}", infoBoard);
        mfood.setName(infoBoard.getFoodName());
        boolean flag = service.modifyService(infoBoard,mfoodNutrient,mfood);
        return flag ? "redirect:/board/infoBoard/detail/" + infoBoard.getInfoNo() : "redirect:/";
    }
}
