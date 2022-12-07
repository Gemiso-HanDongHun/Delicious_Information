package com.champion.deliciousInfo.board.domain;

import lombok.*;

import java.util.Date;

@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Sboard {
    private Long boardNo;
    private String title;
    private String writer;
    private String content;
    private String regdate;
    private int hit;

    private int replyCount;

    private String shortTitle;//줄임 제목
    private String shortWriter; //줄임 계정명
}
