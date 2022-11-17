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
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/foods/")
@Log4j2
@RequiredArgsConstructor
public class FoodRestController {

    private final FoodNutrientService foodNutrientService;

    @GetMapping("")
    public ResponseEntity<List> getList(HttpSession session){
        log.info("/api/foods Get! ");

        List<FoodNutrient> myList = null;
        if( session.getAttribute("myList") ==null){
            myList = new ArrayList<>();
        }else{
            myList = (List<FoodNutrient>) session.getAttribute("myList");
        }

        session.setAttribute("myList",myList);
        log.info("myList : -{}",myList);
        return new ResponseEntity<>(myList, HttpStatus.OK);
    }
    @GetMapping("{foodNo}")
    public ResponseEntity<List> getFoodNutrient(@PathVariable int foodNo, HttpSession session){
        log.info("/api/foods Get! - {}", foodNo);
        FoodNutrient foundOne = foodNutrientService.findOne(foodNo);

        List<FoodNutrient> myList = null;
        if( session.getAttribute("myList") ==null){
            myList = new ArrayList<>();
        }else{
            myList = (List<FoodNutrient>) session.getAttribute("myList");
        }

        myList.add(foundOne);
        session.setAttribute("myList",myList);
        log.info("myList : -{}",myList);
        return new ResponseEntity<>(myList, HttpStatus.OK);
    }
    @DeleteMapping("{foodNo}")
    public ResponseEntity<List> deleteFoodNutrient(@PathVariable int foodNo, HttpSession session){
        log.info("/api/foods Delete! - {}", foodNo);
        FoodNutrient foundOne = foodNutrientService.findOne(foodNo);
                log.info("check-{}",foundOne);

        List<FoodNutrient> myList = null;
        if( session.getAttribute("myList") ==null){
            myList = new ArrayList<>();
        }else{
            myList = (List<FoodNutrient>) session.getAttribute("myList");
        }
        int flag=-1;
        for (int i=0; i<myList.size();i++) {
            FoodNutrient  fn= myList.get(i);
            if(fn.getFood().getFoodNo()==foundOne.getFood().getFoodNo()){
                log.info("fn : -{}",fn);
                flag =i;
            }
        }
        myList.remove(flag);
        session.setAttribute("myList",myList);
        return new ResponseEntity<>(myList, HttpStatus.OK);
    }

    @DeleteMapping("")
    public ResponseEntity<List> deleteSession(HttpSession session){
        log.info("/api/foods Delete! " );
        List<FoodNutrient> myList = new ArrayList<>();
        session.removeAttribute("myList");
        return new ResponseEntity<>(myList, HttpStatus.OK);
    }
}
