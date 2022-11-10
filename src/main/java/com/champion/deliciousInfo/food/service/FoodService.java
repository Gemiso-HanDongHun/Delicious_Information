package com.champion.deliciousInfo.food.service;


import com.champion.deliciousInfo.food.domain.Food;
import com.champion.deliciousInfo.food.repository.FoodMapper;
import com.champion.deliciousInfo.util.FileUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FoodService {


    private final FoodMapper mapper;
    
    //전체 조회
    public List<Food> getList() {
        List<Food> foodList = mapper.findAll();
        return foodList;
    }







    // 한건 조회
    public Food findOne(int foodNo) {
        Food food = mapper.findOne(foodNo);
        return food;
    }

    @Transactional
    public boolean insert(Food food, MultipartFile file){
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag = mapper.save(food);
        return flag;
    }

    public boolean modify(Food food){
        boolean flag = mapper.modify(food);
        return flag;
    }

    @Transactional
    public boolean modify(Food food,MultipartFile file){
        String img = FileUtils.uploadFile(file, FileUtils.UPLOAD_PATH);
        food.setImg(img);
        boolean flag = mapper.modifyFile(food);
        return flag;
    }

    public boolean remove(int foodNo){
        boolean flag = mapper.remove(foodNo);
        return flag;
    }

}
