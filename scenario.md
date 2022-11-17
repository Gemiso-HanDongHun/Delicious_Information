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
   + index.jsp 페이지 보여주기 
   + list.jsp 검색기능
   + about.jsp 홈페이지 설명
    
2. 찾고싶은 음식 검색
   + index.jsp list.jsp로 이동
   
3. 음식의 상세 정보 출력
   + food-nutrient.jsp 음식 영양 정보 비교

4. adminLTE 에서 
   + login.jsp  
   + food-table.jsp list보여주기
   + food-write.jsp 등록
   + food-detail.jsp 상세조회
   + food-modify,delete.jsp 수정및 삭제
   + excel로 등록

# Version 2.0

1. 이용자 입장
    + 추천 음식 100g기준 탄수화물 지방 단백질 비교 알고리즘 
    + 영양소 효능 .jsp 영양소 상세 효능 페이지
    + 남자용 여자용 .jsp 기본 하루 권장량 달라지도록 페이지 구현
    + list.jsp 내가 선택한 음식 모음 보여주기 (session)


lemoncoat : 
11.08 - index.jsp login-form.jsp  food-list.jsp 작성
         admincontroller service mapper 생성 및 로그인 기능 구현 
         admin페이지로 주소 치고 들어가시 인터셉터가 막아서 로그인을 해야지 들어갈수 있음

11.09 - 음식 정보 테이블에 insert modify delete 생성 이미지파일 업로드 및 수정 가능
      그에 따른 foodmapper에 메서드 추가

11.10 - insert modify가 영양소도 들어가고 modify 할수 있게 바꿈 엑셀 부분 아직 미완성

11.14 - admin 엑셀로 데이터베이스 입력 완성 delete기능 fix food부분 search 제작중

11.15 - search 기능 완성 및 admin paging처리 완료

11.16 - 2.0 시작 list.jsp에서 자신이 먹을 음식 선택하면 오른쪽에 뜸 react로 할려하는데 error있어 아직 자바스크립트로만 완성
         아직 admin페이지 search 처리안함 


goill : 

11.08 : index.jsp, food-list.jsp, include, 
                HomeController, FoodController, **Food, FoodMapper, FoodService, FoodMapper.xml**
11.09 : food-list.jsp css 수정, include에 side_nav 추가 작성, list.css 생성

11.10 : food-list 개선 및 Paging 처리, mapper.xml 수정

11.14 : Paging 완성, food-list 수정중
        
11.15 : fodd-list 수정 완료
      
11.16 : 영양 정보 상세 페이지 작성중 about/carb.jsp, FoodAboutController


luycin -> 11.08 : 음식 성분 영양분 정보 DB에서 가져오는 것 구현 테스트 완료, 추후 메인 페이지를 시작으로 디자인 예정

11.09 : 메인페이지에서 음식 영양성분 검색버튼을 누르면 영양성분 상세 페이지로 접속하도록 구현, 해당 영양 정보 페이지에서도 상세 정보가 보여진다. 추후 페이지 통합 및 다른 페이지들 구현할 예정

11.10 : 음식 리스트에서 음식 한개를 클릭시 해당 음식의 영양분과 그것을 제외한 하루 권장 영양분이 보여지도록 구현하였다. 추후 디자인 수정 필요

11.14 : 메인화면 디자인을 다소 수정하였으며, 영양 상세정보페이지 디자인구성을 완료하였다. 현재 리스트에서 상세정보를 누르면 해당 음식의 상세정보가 나온다. 추후 FoodNutrientController 에서 기본값과 부족한 영양성분을 구분하여 값을 주는것이 필요하다.

11.15 : food-nuturient.jsp 계산 후 소수점 고정을 완료하였으며 Main 화면에서의 About.jsp(도움말 페이지) 구현을 완료하였다. 추후 종합적인 About페이지와 영양소 효능 페이지를 구현할 예정이다.

11.16 : About페이지를 구현완료하였고 food-nuturient.jsp의 남, 여 성별별 하루영양분 비교를 구현하였다. 추후 영양분을 비교 계산을해서 추천목록에 알맞는 음식만 출력되도록 할 예정이다.

11.17 : list.jsp 사진추가, food-nutrient.jsp 에서 추천목록에서 메뉴로 이동가능 food-nutrient2.jsp도 동일