package com.champion.deliciousInfo.board.domain;

import lombok.*;

import java.util.Date;

@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FreeBoard {

    private int freeboardNo;
    private String writer;
    private String title;
    private String content;
    private int view_cnt;
    private Date reg_date;

    private int replyCount;
}
