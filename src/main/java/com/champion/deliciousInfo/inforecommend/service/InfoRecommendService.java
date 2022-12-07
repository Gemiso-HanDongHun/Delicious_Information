package com.champion.deliciousInfo.inforecommend.service;

import com.champion.deliciousInfo.inforecommend.domain.InfoRecommend;
import com.champion.deliciousInfo.inforecommend.repository.InfoRecommendMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Log4j2
public class InfoRecommendService {

    private final InfoRecommendMapper infoRecommendMapper;

    public InfoRecommend getValue(InfoRecommend ir){
        return infoRecommendMapper.getValue(ir);
    }

    public boolean regist(InfoRecommend ir){
        return infoRecommendMapper.regist(ir);
    }

    public boolean recommend(InfoRecommend ir){
        if(getValue(ir)==null){
            regist(ir);
        }
        return infoRecommendMapper.recommend(ir);
    }

    public boolean unRecommend(InfoRecommend ir){
        if(getValue(ir)==null){
            regist(ir);
        }
        return infoRecommendMapper.unRecommend(ir);
    }

    public int getRecommendCount(Long infoNo) {
        return infoRecommendMapper.getRecommendCount(infoNo);
    }
    public int getUnRecommendCount(Long infoNo){
        return infoRecommendMapper.getUnRecommendCount(infoNo);
    }

    public boolean cancel(InfoRecommend ir){
        return infoRecommendMapper.cancel(ir);
    }


}
