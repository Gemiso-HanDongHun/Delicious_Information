package com.champion.deliciousInfo.food.domain;


import lombok.*;

@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Food {
    private int foodNo;
    private String name;
    private int kcal;
    private String img;

    public int addTotal(FoodNutrient fn){

        return this.kcal = this.kcal+fn.getFood().getKcal();
    }

}
