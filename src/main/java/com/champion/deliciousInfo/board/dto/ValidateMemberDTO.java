package com.champion.deliciousInfo.board.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
//@NoArgsConstructor
@AllArgsConstructor
public class ValidateMemberDTO {

    private String account;
    private String grade;

    public ValidateMemberDTO() {
        account="no";
        grade="silver";

    }
}
