package com.champion.deliciousInfo.reply.domain;

import lombok.*;

import java.util.Date;

@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InfoReply {

    private Long replyNo; //댓글번호
    private String replyText; //댓글내용
    private String replyWriter; //댓글작성자
    private Date replyDate; //작성일자
    private Long infoNo; //원본 글번호
}
