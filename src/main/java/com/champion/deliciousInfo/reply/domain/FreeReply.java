package com.champion.deliciousInfo.reply.domain;


import lombok.*;

import java.util.Date;

@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FreeReply {

    private Long replyNo;
    private String replyText;
    private String replyWriter;
    private Date replyDate;
    private Long fboardNo;
}
