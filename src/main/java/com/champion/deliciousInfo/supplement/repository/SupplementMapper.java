package com.champion.deliciousInfo.supplement.repository;

import com.champion.deliciousInfo.admin.domain.Admin;
import com.champion.deliciousInfo.food.domain.TodayNutrient;
import com.champion.deliciousInfo.supplement.domain.Supplement;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SupplementMapper {
    List<Supplement> findAll();

}
