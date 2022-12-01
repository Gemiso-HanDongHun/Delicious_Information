package com.champion.deliciousInfo.mfood.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.log4j.Log4j2;


@Getter
@Setter
@ToString
@AllArgsConstructor
@Log4j2
public class MfoodNutrient {
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
    private Mfood mfood;

    public MfoodNutrient() {
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
        this.mfood =new Mfood();
    }
}

