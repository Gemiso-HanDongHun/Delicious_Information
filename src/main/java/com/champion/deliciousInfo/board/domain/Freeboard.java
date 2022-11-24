package com.champion.deliciousInfo.board.domain;

import lombok.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

@Setter
@Getter
@AllArgsConstructor
@ToString
@NoArgsConstructor
@Builder
public class Freeboard {

    // 테이블 컬럼 필드
    private int freeboardNo;
    private String writer;
    private String title;
    private String content;
    private int viewCnt;
    private Date regDate;

}