package com.champion.deliciousInfo.mfood.domain;


import lombok.*;

@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Mfood {
    private int foodNo;
    private String name;
    private int kcal;

}
