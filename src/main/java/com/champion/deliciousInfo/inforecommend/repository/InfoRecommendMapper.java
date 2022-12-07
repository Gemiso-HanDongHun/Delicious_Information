package com.champion.deliciousInfo.inforecommend.repository;

import com.champion.deliciousInfo.inforecommend.domain.InfoRecommend;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InfoRecommendMapper {

    InfoRecommend getValue(InfoRecommend ir);
    boolean regist(InfoRecommend ir);

    boolean recommend(InfoRecommend ir);
    boolean unRecommend(InfoRecommend ir);
    int getRecommendCount(Long infoNo);
    int getUnRecommendCount(Long infoNo);
    boolean cancel(InfoRecommend ir);
}
