package com.champion.deliciousInfo.board.infoboard.domain;

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

}
