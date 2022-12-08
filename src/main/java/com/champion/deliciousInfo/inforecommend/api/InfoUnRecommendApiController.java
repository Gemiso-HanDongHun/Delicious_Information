package com.champion.deliciousInfo.inforecommend.api;

import com.champion.deliciousInfo.inforecommend.domain.InfoRecommend;
import com.champion.deliciousInfo.inforecommend.dto.InfoRecommendDTO;
import com.champion.deliciousInfo.inforecommend.service.InfoRecommendService;
import com.champion.deliciousInfo.member.domain.Member;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;

@RestController
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/api/v1/unrecommend")
@CrossOrigin
public class InfoUnRecommendApiController {

    private final InfoRecommendService infoRecommendService;



    @GetMapping("")
    public ResponseEntity<InfoRecommendDTO> ueCount(Long infoNo, HttpSession session) {
        log.info("/api/v1/unrecommend GET! info={}", infoNo);
        InfoRecommend ir = new InfoRecommend();
        ir.setInfoNo(infoNo);
        Member member =(Member)session.getAttribute(LOGIN_FLAG);
        ir.setAccount(member.getAccount());
        boolean flag = infoRecommendService.unRecommend(ir);
        InfoRecommendDTO irdto = new InfoRecommendDTO();
        if(flag){
            irdto.setReCount(infoRecommendService.getRecommendCount(infoNo));
            irdto.setUeCount(infoRecommendService.getUnRecommendCount(infoNo));
            irdto.setValue(infoRecommendService.getValue(ir).getValue());
            return new ResponseEntity<>(irdto,HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_GATEWAY);
    }

    @DeleteMapping("")
    public ResponseEntity<InfoRecommendDTO> delete(Long infoNo, HttpSession session) {
        log.info("/api/v1/recommend delete! info={}", infoNo);
        InfoRecommend ir = new InfoRecommend();
        ir.setInfoNo(infoNo);
        Member member =(Member)session.getAttribute(LOGIN_FLAG);
        ir.setAccount(member.getAccount());
        boolean flag = infoRecommendService.cancel(ir);
        InfoRecommendDTO irdto = new InfoRecommendDTO();
        if(flag){
            irdto.setReCount(infoRecommendService.getRecommendCount(infoNo));
            irdto.setUeCount(infoRecommendService.getUnRecommendCount(infoNo));
            return new ResponseEntity<>(irdto,HttpStatus.OK);
        }

        return new ResponseEntity<>(HttpStatus.BAD_GATEWAY);
    }


}
