package com.champion.deliciousInfo.food.domain;

import lombok.*;

import java.sql.ResultSet;
import java.sql.SQLException;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
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


    public FoodNutrient(ResultSet rs) throws SQLException {
        this.nutrientNo = rs.getInt("nutrient_no");
        this.carbohydrate = rs.getFloat("carbohydrate");
        this.protein = rs.getFloat("protein");
        this.fat = rs.getFloat("carbohydrate");
        this.vitaminA = rs.getFloat("vitaminA");
        this.vitaminC = rs.getFloat("vitaminC");
        this.vitaminE = rs.getFloat("vitaminE");
        this.calcium = rs.getFloat("carbohydrate");
        this.iron = rs.getFloat("carbohydrate");
        this.magnesium = rs.getFloat("carbohydrate");
        this.sodium = rs.getFloat("sodium");
        this.omega = rs.getFloat("omega");

    }
}
