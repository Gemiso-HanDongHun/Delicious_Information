package com.champion.deliciousInfo.common.paging;

import com.champion.deliciousInfo.food.repository.FoodMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class PageMakerTest {
    @Autowired
    FoodMapper mapper;

//    @Test
   /* void pageInfoTest() {

//        int totalCount = mapper.getTotalCount();
        PageMaker pm = new PageMaker(new Page(31, 10), totalCount);

        System.out.println(pm);

//        assertEquals(40, pm.getEndPage());
//        assertEquals(31, pm.getBeginPage());
    }*/
}