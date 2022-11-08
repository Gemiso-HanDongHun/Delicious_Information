package com.champion.deliciousInfo.food.domain;

import lombok.*;

import java.sql.ResultSet;
import java.sql.SQLException;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FoodNutrient {
 private Integer nutrientNo;
 private float carbohydrate;
 private float protein;
 private float fat;
 private float vitaminA;
 private float vitaminC;
 private float vitaminE;
 private float calcium;
 private float iron;
 private float magnesium;
 private float sodium;
 private float omega;
 private Food food;
}
