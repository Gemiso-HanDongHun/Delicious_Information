package com.champion.deliciousInfo.food.domain;

import lombok.*;


@Getter
@Setter
@ToString
@AllArgsConstructor
public class FoodNutrient {
    private Integer nutrientNo;
    private Float carbohydrate;
    private Float protein;
    private Float fat;
    private Float vitaminA;
    private Float vitaminC;
    private Float vitaminE;
    private Float calcium;
    private Float iron;
    private Float magnesium;
    private Float sodium;
    private Float omega;

    private Food food;

    public FoodNutrient() {
        this.carbohydrate = 0f;
        this.protein = 0f;
        this.fat = 0f;
        this.vitaminA = 0f;
        this.vitaminC = 0f;
        this.vitaminE = 0f;
        this.calcium = 0f;
        this.iron = 0f;
        this.magnesium = 0f;
        this.sodium = 0f;
        this.omega = 0f;
    }

    public void addTotal(FoodNutrient fn) {
        this.carbohydrate = (Math.round((this.carbohydrate + fn.getCarbohydrate()) * 100) / 100.0f);
        this.protein = (Math.round((this.protein + fn.getProtein()) * 100) / 100.0f);
        this.fat = (Math.round((this.fat + fn.getFat()) * 100) / 100.0f);
        this.vitaminA = (Math.round((this.vitaminA + fn.getVitaminA()) * 100) / 100.0f);
        this.vitaminC = (Math.round(this.vitaminC + fn.getVitaminC()) * 100 / 100.0f);
        this.vitaminE = (Math.round(this.vitaminE + fn.getVitaminE()) * 100 / 100.0f);
        this.calcium = (Math.round(this.calcium + fn.getCalcium()) * 100 / 100.0f);
        this.iron = (Math.round(this.iron + fn.getIron()) * 100 / 100.0f);
        this.magnesium = (Math.round(this.magnesium + fn.getMagnesium()) * 100 / 100.0f);
        this.sodium = (Math.round(this.sodium + fn.getSodium()) * 100 / 100.0f);
        this.omega = (Math.round(this.omega + fn.getOmega()) * 100 / 100.0f);
    }
}

