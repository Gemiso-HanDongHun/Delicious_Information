Application Scenario
=========================
# Version 1.0
## Admin 
1. 식품 정보를 등록 할 수 있다.

## Member 
1. 지금은 존재 x

DB 설계
음식ID, 음식명, Kcal, 사진명

영양소( 탄수화물, 단백질, 지방, 비타민 A, D, E, K, C),

## food Table 
* food_no (int auto Increment primary key) 
* name (varchar 10 not null)
* kcal (int 5)
* img (varchar 10)
* 대분류
* 상세분류

## food_nutrient table
* nutrient_no int auto increment primary key
* carbohydrate
* protein
* fat
* vitamin a
* vitamin c
* vitamin e
* 칼슘
* 철
* 마그네슘
* 나트륨
* 오메가3 (양)
* food_no reference(food.food_no) 

### function
1. 이용자가 우리 페이지 접속 
   + MainController getmapping ("/") 
   + index.jsp 페이지 보여주기 
    
2. 찾고싶은 음식 검색
   + jsp에서 RestController (restcontroller) (/food) getmapping
   + service -> mapper 연동 데이터베이스에서 값 가져오기 jsp로 json 보내기
   + index.jsp list.jsp로 이동
   
3. 음식의 상세 정보 출력
   + 클릭 FoodController (/food/detail) getmapping
   + service -> mapper food dto 가져와서 jsp 로 setattribute
   + food-detail.jsp 정보 출력 

4. adminLTE 에서 
   + 음식 정보 등록 
   + admin-index.jsp adminController ("/") 
   + login.jsp  
    

### 맡은 부분
lemoncoat   : adminController 


Goill       : mainController restController


LUYCIN      : foodController 


###

lemoncoat : 11.07 - 



goill : 11.08 : index.jsp, food-list.jsp, include, 
                HomeController, FoodController, Food, FoodMapper, FoodService, FoodMapper.xml

 

luycin : 11.08 - 음식 성분 영양분 정보 DB에서 가져오는 것 구현 테스트 완료, 
                  추후 메인 페이지를 시작으로 디자인 예정


