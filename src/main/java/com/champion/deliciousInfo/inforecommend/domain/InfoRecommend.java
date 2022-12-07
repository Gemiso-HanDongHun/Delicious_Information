package com.champion.deliciousInfo.inforecommend.domain;

import lombok.*;

@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class InfoRecommend {
    private Long irNo;
    private Long infoNo;
    private String account;
    private Integer value;
}
