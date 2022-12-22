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
   + 등록 수정 삭제 권한 detail

# Version 5.0
1. client
   + 마이페이지

# Version 6.0
1. 유지보수
 + food-list.jsp, mypage.jsp -> 제목 글자수 제한
 + board 제목 글자수 제한(60글자)
 + DB 초기화 
 + mypage.jsp 정렬(DESC)
 + food-list.jsp 100g 제거 
 + food-list.jsp 회원탈퇴 확인 메시지 
 + mypageinterceptor 널포인터, 타인 삭제 방지 
 + food-list session 
 + admin page HOME 화면 g 추가, 삭제