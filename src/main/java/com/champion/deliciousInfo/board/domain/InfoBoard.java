package com.champion.deliciousInfo.board.domain;

import com.champion.deliciousInfo.mfood.domain.MfoodNutrient;
import lombok.*;

@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InfoBoard {
    private int infoNo;
    private String foodName;
    private String writer;
    private String content;
    private String regdate;
    private int hit;
    private int good;
    private int bad;


    private int replyCount;

    private String shortName;//줄임 제목
    private String shortWriter; //줄임 계정명

    private int mfoodNutrient;
}
