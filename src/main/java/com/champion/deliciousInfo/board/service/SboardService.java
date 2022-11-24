package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.repository.SboardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class SboardService {

    private final SboardMapper sboardMapper;

    public List<Sboard> findAll(){
        log.info("sboard findALL start");
        List<Sboard> sboardList = sboardMapper.findAll();
        return sboardList;
    }
    public boolean regist(Sboard sboard){
        log.info("sboard reigst start -{}",sboard);
        boolean flag = sboardMapper.regist(sboard);
        return flag;
    }

}
