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

    private int mfoodNutrient;
}
