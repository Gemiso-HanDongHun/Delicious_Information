package com.champion.deliciousInfo.util;

import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.domain.TodayNutrient;

import java.util.Comparator;
import java.util.List;

import static java.lang.Math.pow;
import static java.lang.Math.sqrt;

public class RecommendUtils {

    public static List<FoodNutrient> recommend(List<FoodNutrient> foodList, TodayNutrient tn){

        for (FoodNutrient fn : foodList) {
            fn.setLength(
                    sqrt(pow(tn.getCarbohydrate()-fn.getCarbohydrate(),2)
                    +pow(tn.getProtein()-fn.getProtein(),2)
                    +pow(tn.getFat()-fn.getFat(),2))
            );
        }

        foodList.sort(Comparator.comparingDouble(FoodNutrient::getLength));

        return foodList;
    }
}
