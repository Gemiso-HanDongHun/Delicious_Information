package com.champion.deliciousInfo.food.domain;

import lombok.*;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Food {
    private int foodNo;
    private String name;
    private int kcal;
    private String img;
}
