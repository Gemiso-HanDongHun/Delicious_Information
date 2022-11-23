package com.champion.deliciousInfo.member.repository;

import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.member.domain.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MemberMapper {

    boolean register(Member member);

    // 중복체크 기능
    // 체크타입: 계정 or 이메일
    // 체크값: 중복검사대상 값
    int isDuplicate(Map<String, Object> checkMap);

    Member findUser(String account);

    List<Member> findAll();

    List<Food> search(Search search);

    //검색 조회 count 처리
    int getTotalCount(Search search);

    boolean modifyGrade(Member member);

    boolean remove(Member member);

}
