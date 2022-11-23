package com.champion.deliciousInfo.admin.controller;

import com.champion.deliciousInfo.common.paging.Page;
import com.champion.deliciousInfo.common.paging.PageMaker;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/admin/member")
public class AdminMemberController {
    private final MemberService memberService;

    @GetMapping("/list")
    public String getList(Model model, @ModelAttribute("s")Search search){
        log.info("GetMapping admin/member/list forwarding to member-list.jsp -{}",search);
        Map<String, Object> foodMap = memberService.search(search);
        PageMaker pm = new PageMaker(new Page(search.getPageNum(),search.getAmount()), (Integer) foodMap.get("tc"));
        model.addAttribute("memberList",foodMap.get("mList") );
        model.addAttribute("pm", pm);
        return "admin/member/member-list";
    }

    @PostMapping("/modify")
    public String modify(Member member, RedirectAttributes ra){
        log.info("PostMapping admin/member/modify forwarding to member-List.jsp -{}",member);
        boolean flag = memberService.modifyGrade(member);
        ra = flag ?
                ra.addFlashAttribute("msg", "수정성공")
                : ra.addFlashAttribute("msg", "수정실패");
        return "redirect:/admin/member/list";

    }

    @PostMapping("/remove")
    public String remove(Member member, RedirectAttributes ra){
        log.info("PostMapping admin/member/remove forwarding to member-List.jsp -{}",member);
        boolean flag = memberService.remove(member);
        ra = flag ?
                ra.addFlashAttribute("msg", "삭제성공")
                : ra.addFlashAttribute("msg", "삭제실패");
        return "redirect:/admin/member/list";

    }
}
