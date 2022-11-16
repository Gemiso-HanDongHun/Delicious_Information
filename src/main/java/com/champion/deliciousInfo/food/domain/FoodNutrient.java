package com.champion.deliciousInfo.food.domain;

import lombok.*;


@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
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
 private boolean check;


}
