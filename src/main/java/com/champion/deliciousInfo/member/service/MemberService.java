package com.champion.deliciousInfo.member.service;

import com.champion.deliciousInfo.admin.service.LoginFlag;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.member.domain.Member;
import com.champion.deliciousInfo.member.dto.LoginDTO;
import com.champion.deliciousInfo.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.champion.deliciousInfo.member.service.MemberLoginFlag.*;
import static com.champion.deliciousInfo.util.LoginUtils.LOGIN_FLAG;

@Service
@Log4j2
@RequiredArgsConstructor
public class MemberService {


    private final MemberMapper memberMapper;
    private final BCryptPasswordEncoder encoder;

    // 회원 가입 중간 처리
    public boolean signUp(Member member) {
        // 비밀번호 인코딩
        member.setPassword(encoder.encode(member.getPassword()));

        return memberMapper.register(member);
    }

    // 중복확인 중간처리

    /**
     * 계정과 이메일의 중복을 확인하는 메서드
     *
     * @param type  - 확인할 정보 (ex: account or email)
     * @param value - 확인할 값
     * @return 중복이라면 true, 중복이 아니라면 false
     */
    public boolean checkSignUpValue(String type, String value) {
        Map<String, Object> checkMap = new HashMap<>();
        checkMap.put("type", type);
        checkMap.put("value", value);

        return memberMapper.isDuplicate(checkMap) == 1;
    }

    // 회원 정보 조회 중간 처리
    public Member getMember(String account) {
        return memberMapper.findUser(account);
    }


    public boolean kakaoSignUp(Member member){

        return memberMapper.register(member);
    }

    public MemberLoginFlag login(LoginDTO inputData, HttpSession session) {
        // 회원가입 여부 확인
        Member foundMember = memberMapper.findUser(inputData.getAccount());
        if (foundMember != null) {
            if (encoder.matches(inputData.getPassword(), foundMember.getPassword())) {

                // 세션에 사용자 정보기록 저장
                session.setAttribute(LOGIN_FLAG, foundMember);

                // 세션 타임아웃 설정
                session.setMaxInactiveInterval(60 * 60); // 1시간


                // 로그인 성공
                return SUCCESS;
            } else {
                // 비번 틀림
                return NO_PW;
            }
        } else {
            // 아이디 없음
            return NO_ACC;
        }
    }

    public List<Member> findAll(){
        List<Member> memberList = memberMapper.findAll();

        return memberList;
    }

    public Map<String, Object> search(Search search) {
        log.info("findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Food> memberList = memberMapper.search(search);

        findDataMap.put("mList", memberList);
        findDataMap.put("tc", memberMapper.getTotalCount(search));

        return findDataMap;
    }

    public boolean modifyGrade(Member member){
        log.info("modifyGrade start");
        boolean flag = memberMapper.modifyGrade(member);
        return flag;
    }

    public boolean remove(Member member){
        log.info("memberService remove start");
        boolean flag=memberMapper.remove(member);
        return flag;
    }

}