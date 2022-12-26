package com.champion.deliciousInfo.food.domain;

import lombok.*;
import lombok.extern.log4j.Log4j2;


@Getter
@Setter
@ToString
@AllArgsConstructor
@Log4j2
public class FoodNutrient {
    private Integer nutrientNo;

    private int servingSize;
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

    private double length;// 추천 알고리즘에 적용하는 두점 사이의 거리를 측정 변수
    // 여기서 두점 사이의 거리는 오늘 내가 필요한 영양분과 음식의 영양분 사이의 거리

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
        this.food =new Food();
    }

    public void addTotal(FoodNutrient fn){
        this.carbohydrate =(Float)(Math.round((this.carbohydrate+fn.getCarbohydrate())*100)/100.0f);
        this.protein =(Float)(Math.round((this.protein+fn.getProtein())*100)/100.0f);
        this.fat =(Float)(Math.round((this.fat+fn.getProtein())*100)/100.0f);
        this.vitaminA =(Float)(Math.round((this.vitaminA+fn.getVitaminA())*100)/100.0f);
        this.vitaminC =(Float)(Math.round((this.vitaminC+fn.getVitaminC())*100)/100.0f);
        this.vitaminE =(Float)(Math.round((this.vitaminE+fn.getVitaminE())*100)/100.0f);
        this.calcium =(Float)(Math.round((this.calcium+fn.getCalcium())*100)/100.0f);
        this.iron =(Float)(Math.round((this.iron+fn.getIron())*100)/100.0f);
        this.magnesium =(Float)(Math.round((this.magnesium+fn.getMagnesium())*100)/100.0f);
        this.sodium =(Float)(Math.round((this.sodium+fn.getSodium())*100)/100.0f);
        this.omega =(Float)(Math.round((this.omega+fn.getOmega())*100)/100.0f);
        log.info("Food null-{}",this.food);
        this.food.setKcal(this.getFood().addTotal(fn));

    }
}

