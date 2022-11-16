package com.champion.deliciousInfo.food.api;

import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.domain.FoodNutrient;
import com.champion.deliciousInfo.food.service.FoodNutrientService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.jdbc.Null;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/foods/")
@Log4j2
@RequiredArgsConstructor
public class FoodRestController {

    private final FoodNutrientService foodNutrientService;
    @GetMapping("{foodNo}")
    public ResponseEntity<FoodNutrient> getFoodNutrient(@PathVariable int foodNo, HttpSession session){
        log.info("/api/foods Get! - {}", foodNo);
        FoodNutrient foundOne = foodNutrientService.findOne(foodNo);
        if(foundOne == null){
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        List<FoodNutrient> myList = null;
        if( session.getAttribute("myList") ==null){
            myList = new ArrayList<>();
        }else{
            myList = (List<FoodNutrient>) session.getAttribute("myList");
        }

        myList.add(foundOne);
        session.setAttribute("myList",myList);
        return new ResponseEntity<>(foundOne, HttpStatus.OK);
    }
}
