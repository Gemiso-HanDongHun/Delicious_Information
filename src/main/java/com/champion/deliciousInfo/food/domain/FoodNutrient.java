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

    public void addTotal(FoodNutrient fn){
        this.carbohydrate =(Float)(Math.round((this.carbohydrate+fn.getCarbohydrate())*100)/100.0f);
        this.protein =(Float)(Math.round((this.protein+fn.getProtein())*100)/100.0f);
        this.fat+=fn.getFat();
        this.vitaminA+=fn.getVitaminA();
        this.vitaminC+=fn.getVitaminC();
        this.vitaminE+=fn.getVitaminE();
        this.calcium+=fn.getCalcium();
        this.iron+=fn.getIron();
        this.magnesium+=fn.getMagnesium();
        this.sodium+=fn.getSodium();
        this.omega+=fn.getOmega();
    }

}
