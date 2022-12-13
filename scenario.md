Application Scenario
=========================

## 사업방향
1. 영양제 회사와 협업을 통해 사용자가 부족한 영양성분과 제품 추천 및 광고
2. 



## Admin 
1. 식품 정보를 등록 할 수 있다.
2. 회원정보 관리 페이지

## Member 
1. 자신의 검색목록 
2. 즐겨 찾기
3. 게시판 이용
4. 회원만 제품 추천
member db
account password grade email gender phone 


## Board
1. 자유
2. 회워용 리스트 게시판 추천 -> list.jsp 업데이트 -> vip -> 영양소 제품 하나줘 (정보)
3. 건의/문의사항

## freeBoard board/free-board.jsp
* board_no
* title
* writer (member account)
* content
* regdate
* hit

## infoBoard board/info-board.jsp
* board_no
* title
* writer (member account)
* content
* regdate
* hit
* foodNo(지가 생성) (새로운 food테이블 foodNutirent)
* 추천
* 비추천

## suggestionBoard board/suggest-board
* board_no
* title
* writer (member account)
* content
* regdate 
* hit
* 추천
* 비추천

board.freeboardController


영양소( 탄수화물, 단백질, 지방, 비타민 A, D, E, K, C),
## nutrient(영양제)
* name
* id
* quantity

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

# Version 1.0
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
    + 추천 음식 100g기준 탄수화물 지방 단백질 비교 알고리즘 x  (추천 알고리즘 sql수정 나중에)
    + 영양소 효능 .jsp 영양소 상세 효능 페이지 ok
    + 남자용 여자용 .jsp 기본 하루 권장량 달라지도록 페이지 구현 ok
    + list.jsp 내가 선택한 음식 모음 보여주기 (session) ok


# Version 3.0
1. client 
    + 영양제 추천 nutrient.jsp 에 영양제만 vitaminA, vitaminC, vitaminE o 
    + 로그인, 회원 가입 o 
    + 카카오로그인 o

# Version 4.0
1. client 
    + 자유게시판 댓글 o 1 테이블 
    + 정보게시판 list랑 거의 비슷함 댓글 o 2 테이블 
    + 건의게시판 댓글 x 3 테이블
    + 
    + 등록 수정 삭제 권한 detail 
# Version 5.0
1. client 
    + 댓글에 댓글
    + 마이페이지
2. admin
    + 건의 문의 게시판 관리



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

11.17 - session 초기화 및 8개 까지 보여주기 adminpage search 처리 x 선택된 check 처리

11.18 - 여러가지 음식 선택하고 검색 버튼 누르면 선택한 음식들의 영양정보 보여주기 controller 와 서비스 처리 완료

11.21 - food-nutrient-list.jsp 영양소 양 뜨게 바꾸기 fnservice fncontroller 변경 supplement db추가 및 도메인
추가 service추가 mapper추가 추천 영양제 보여주기 완료

11.22 - kakoLogin 구현 afterLogininterceptor 구현

11.23 - admin 페이지 member관리 페이지 완성 등급 수정및 회원삭제

11.24 - sboardController 생성 write및 findall생성 Sboard-write, sboard-list.jsp 작성

11.25 - sboard detail 및 header수정

11.28 - 11.28 - sboard 수정 삭제 및 reply 수정 삭제 등록 구현

11.30 - 게시판 헤더 수정 및 BoardInterceptor 생성

12.01 - infoboard write detail modify 수정 mfoodmapper와 mfoodnutrient생성

12.05 : aws 배포 및 오류 수정

12.06 : 전반적 디자인 수정및 인터셉터 및 카카오 회원가입

12.07 : 추천 비추천 생성

12.08 : 비추천 완료 로그인 해야만 가능

12.12 : 배포파일 카카오로그인 가능 오류 수정

goill : 

11.08 : index.jsp, food-list.jsp, include, 
                HomeController, FoodController, **Food, FoodMapper, FoodService, FoodMapper.xml**
11.09 : food-list.jsp css 수정, include에 side_nav 추가 작성, list.css 생성

11.10 : food-list 개선 및 Paging 처리, mapper.xml 수정

11.14 : Paging 완성, food-list 수정중
        
11.15 : fodd-list 수정 완료
      
11.16 : 영양 정보 상세 페이지 작성중 about/carb.jsp, FoodAboutController

11.17 : about 페이지들 완성, FoodAboutController 완성 , about_nav 수정중 

11.18 : resources에 css파일 생성 및 about 페이지 디자인 수정 완료 

11.21 : login 페이지 제작 및 수정중

11.22 : login 페이지 처리 및 검증 완료

11.23 : list 페이지 및 login 페이지 수정

11.24 : infoboard 패키지 및 하위 파일 작성 중

11.25 : infoBoard 디자인 마무리 및 nav 통일하는 작업

11.28 : infoBoard 수정 및 write, detail, update 작성 및 수정중

12.01 : infoBoard jsp 수정 및 리스트 작성, 수정, 삭제 그리고 댓글 기능 추가

12.05 : aws 설정 및 infoBoard 수정

12.06: jsp 여러 페이지 이미지 삽입 및 디자인 수정

12.07 : 게시판 글자 수 제한, 밸리데이터 작성 완료

12.08 : 게시판 상세정보 디자인 수정, 영양설명페이지 디자인 수정

12.12 : 게시판 작성버튼 위치 조정, 로그인 디자인 반응형 수정

12.13 : 게시판 전체 드랍버튼 디자인 수정, 일괄 폰트 적용, 1일 권장량 추가

luycin

11.08 : 음식 성분 영양분 정보 DB에서 가져오는 것 구현 테스트 완료. 
        추후 메인 페이지를 시작으로 디자인 예정

11.09 : 메인페이지에서 영양성분 상세 페이지로 접속하도록 구현, 해당 영양 정보 페이지에서도 상세 정보가 보여짐. 
        추후 페이지 통합 및 다른 페이지들 구현할 예정

11.10 : 음식 리스트에서 음식 한개를 클릭시 해당 음식의 영양분과 그것을 제외한 하루 권장 영양분이 보여지도록 구현. 추후 디자인 수정 필요

11.14 : 메인화면 디자인을 다소 수정, 영양 상세정보페이지 디자인구성을 완료. 현재 리스트에서 상세정보를 누르면 해당 음식의 상세정보가 보여짐. 
        추후 FoodNutrientController 에서 기본값과 부족한 영양성분을 구분하여 값을 주는것이 필요

11.15 : food-nuturient.jsp 계산 후 소수점 고정을 완료하였으며 Main 화면에서의 About.jsp(도움말 페이지) 구현을 완료.   
        추후 종합적인 About페이지와 영양소 효능 페이지를 구현할 예정

11.16 : About페이지를 구현완료하였고 food-nuturient.jsp의 남, 여 성별별 하루영양분 비교를 구현.
        추후 영양분을 비교 계산을해서 추천목록에 알맞는 음식만 출력되도록 할 예정

11.17 : list.jsp 사진추가, food-nutrient.jsp 에서 추천목록에서 메뉴로 이동가능 food-nutrient2.jsp도 동일

11.18 : food-nuturient.jsp에서 하루할당 에너지를 만족여부에 따른 결과 메세지 출력,session으로 체크한 음식을 보여주기위한 박스 생성

11.21 : 회원가입 기능 -> 현재 값을 입력할시에 DB에 데이터가 삽입된다. 성별 체크박스 유효성 검사 필요

11.22 : 회원가입 디자인, 기능 수정완료 현재 유효성 alert창으로 구현

11.23 : 회원가입 기능 칸을 채우지 않았을 경우 알림메시지등 구현 완료

11.24 : freeboard.jsp(자유게시판) 기능 구현시작 진행중

11.25 : 자유게시판 페이징처리, 글쓰기 글등록 완료

11.28 : 자유게시판 상세글보기 처리 

11.29 : 글 삭제, 수정

11.30 : 댓글 개수보기, 댓글 삭제, 수정, 등록 구현

12.01 : 게시판 이미지 동등하게 변경

12.05 : aws배포 및 프로젝트 유지보수

12.06 : 게시판 추가 수정 및 유지보수

12.07 : 전체 폰트 변경 및 디자인 수정

12.08 : 유지보수

12.09 : 게시판 유지보수

12.12 : 영양분 상세 페이지 회원, 비회원 차별성

12.13 : 마이페이지 구현