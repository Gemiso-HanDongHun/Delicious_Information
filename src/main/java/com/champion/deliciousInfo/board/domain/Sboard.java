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
    private Date regdate;
    private int hit;

    private int replyCount;
}
