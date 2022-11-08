package com.champion.deliciousInfo.admin.domain;

import lombok.*;

@Getter @Setter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
    private Integer adminNo;
    private String account;
    private String password;
}
