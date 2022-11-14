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

lemoncoat : 
11.08 - index.jsp login-form.jsp  food-list.jsp 작성
admincontroller service mapper 생성 및 로그인 기능 구현 
admin페이지로 주소 치고 들어가시 인터셉터가 막아서 로그인을 해야지 들어갈수 있음

11.09 - 음식 정보 테이블에 insert modify delete 생성 이미지파일 업로드 및 수정 가능
      그에 따른 foodmapper에 메서드 추가

11.10 - insert modify가 영양소도 들어가고 modify 할수 있게 바꿈 엑셀 부분 아직 미완성



goill : 11.08 : index.jsp, food-list.jsp, include, 
                HomeController, FoodController, **Food, FoodMapper, FoodService, FoodMapper.xml**
        11.09 : food-list.jsp css 수정, include에 side_nav 추가 작성, list.css 생성

        11.10 : food-list 개선 및 paging 처리, mapper.xml 수정

        11.14 : paging 완성, css 수정중


luycin : 11.08 - 음식 성분 영양분 정보 DB에서 가져오는 것 구현 테스트 완료, 
                  추후 메인 페이지를 시작으로 디자인 예정

luycin : 11.09 - 메인페이지에서 음식 영양성분 검색버튼을 누르면 영양성분 상세 페이지로 접속하도록 구현,
                  해당 영양 정보 페이지에서도 상세 정보가 보여진다. 추후 페이지 통합 및 다른 페이지들 구현할 예정

11.10 : 음식 리스트에서 음식 한개를 클릭시 해당 음식의 영양분과 그것을 제외한 하루 권장 영양분이 보여지도록 구현하였다.
         추후 디자인 수정 필요