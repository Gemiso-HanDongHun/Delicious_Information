<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="../food/include/header_css.jsp" %>

    <style>

        div.boxed-page {
            height: 100vh;
            background-image: url(/resto/img/background2.png);
            background-size: cover;
            /*background-color: #ffffff;*/
            /*background-color: rgba( 255, 255, 255, 0.5 );*/
        }


        /* 외부 폰트 사용 */
        @font-face {
            font-family: 'BMDOHYEON';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        /* List CSS */
        /* 테이블 전체 */
        .test {
            width: 35%;
            border: 2px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 24px;
            background: #f4ede5;
            line-height: 202%;
            z-index: 1000;
        }

        /* 내부 tr 배경 */
        table.test tr {
            background: #ffffff;
        }

        /* th 중앙 정렬 및 외부 폰트 */
        div.boxed-page table th {
            text-align: center;
            /*font-family: 'BMDOHYEON'; !* th 폰트*!*/
            font-weight: 700;
        }

        /* td 중앙 정렬 */
        div.boxed-page table td {
            text-align: center;
        }

        /* 전체 리스트에서 음식명 마우스 오버시 마우스 포인터*/
        div.boxed-page table td:nth-child(2):hover {
            cursor: pointer;
        }

        /* 서치 div 영역 */
        div.div_search {
            width: 25%;
            margin: 70px auto 50px;
            display: flex;
            border-radius: 1em;
            font-size: 0.8vw;
            border: 2px solid #000000;
            line-height: 180%;
            padding-left: 10px;
            margin-bottom: 30px;
            margin-top: 110px;
        }

        div.writebt {
            width: 70px;
            border: 2px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            color: #f4ede5;
        }

        table.test {
            /*margin-top: 5px;*/
            width: 1050px;
        }

        div.div_search form {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* 서치바 영역 */
        div.div_search input[type=text] {
            width: 100%;
            height: 40px;
            border: 0px;

        }

        div.div_search input[type=text]:focus {
            outline: none;
        }

        div.div_search a {
            padding: 8px 8px 2px;
        }

        /* 서치 아이콘 */
        span.lnr-magnifier {
            font-size: 25px;
        }

        /* 목록 전체 영역 */
        div.bottom_section {
            padding-bottom: 1px;
            margin-top: 25px;
            margin-bottom: 2px;
            color: black;
        }

        /* a태그 폰트 설정 */
        div.bottom_section ul li a {
            color: black;
        }

        /* 목록 마우스 오버시 (현재 마우스 위치를 알기 위해서) */
        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: lightgray;
            color: #ffff;
        }

        /* a태그 포커스 삭제*/
        div.bottom_section nav.bottom_nav ul li a.page-link:focus {
            outline: 0;
            box-shadow: none;
        }

        div.flex-column li {
            padding-top: 35px;
        }

        div.flex-column li a {
            position: relative;
            margin-right: 140px;
            padding-top: 45px;
        }

        li.nav-item #about {
            position: relative;
            margin-right: 400px;
            padding-top: 45px;
        }


        div.flex-column li p#title {
            position: relative;
            text-align: center;
            right: 160px;
            font-size: 35px;
            /*background-color: rebeccapurple;*/
        }

        .page-item.active .page-link {
            z-index: 1;
            color: #fff;
            background-color: lightgray;
            border-color: lightgray;
        }

        .boxed-page aside.aside {
            position: absolute;
            top: 25%;
            left: 70%;
            z-index: 10;
            padding: 10px;
        }

        .boxed-page aside.aside .side-bar-list {
            min-width: 200px;
            background: #FFFFFF;
            border-radius: 1.5rem;
            border: solid 10px #f4ede5;
            padding: 10px;
            margin-left: 70px;
            /*margin-top: 30px;*/
        }

        .boxed-page aside.aside .side-bar-list .myList {
            text-align: center;
        }

        div.sign {
            margin-left: 250px;
        }

        div.flex-column li.sign a, div.flex-column li.sign p {
            width: 100px;
            position: relative;
            margin-right: 50px;
            padding-top: 45px;
        }

        li.active {
            width: 160px;
            margin-left: 41px;
        }

        div.buttonDiv {
            position: absolute;
            width: 120px;
            height: 45px;
            top: 212px;
            margin-left: 65%;

        }

        button#boardwriter{
            border-radius: 1.5rem;
            border: solid 5px #f4ede5;
            padding: 5px;
            background-color : #f4ede5;
            width: 70px;
            cursor: pointer;

        }


    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../food/include/side_nav.jsp" %>

<div class="boxed-page">

    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <li class="nav-item only-desktop">
                        <%--                        <a class="nav-link" id="side-nav-open" href="#">--%>
                        <%--                            <span class="lnr lnr-menu"></span>--%>
                        <%--                        </a>--%>
                    </li>
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food/list">List</a>
                        </li>

                        <li>
                            <p id="title">𝓕𝓻𝓮𝓮 𝓑𝓸𝓪𝓻𝓭</p>
                        </li>


                        <li class="nav-item sign">
                            <a class="nav-link" id="sign-in" href="/member/sign-in">정보게시판</a>
                        </li>
                        <li class="nav-item sign">
                            <a class="nav-link" id="sign-up" href="/member/sign-up">건의게시판</a>
                        </li>


                    </div>


                    <%--                </ul>--%>

                    <%--                <a class="navbar-brand navbar-brand-center d-flex align-items-center only-desktop" href="/">--%>
                    <%--                    <img src="/resto/img/logo.png" alt="">--%>
                    <%--                </a>--%>
                    <%-- <ul class="navbar-nav d-flex justify-content-between">
                         <div class="d-flex flex-lg-row flex-column">
                             </li>
                         </div>
                         <li class="nav-item">
                         </li>
                     </ul>--%>
            </div>
        </div>
    </nav>

    <%--    <div class="writebt">--%>
    <%--        <button>글쓰기</button>--%>
    <%--    </div>--%>

    <div class="div_search">
        <form id="searchForm">
            <input type="text" placeholder="검색하고 싶은 내용을 적어주세요" name="keyword" id="inputName"
                   value="${s.keyword}">
            <a id="side-search-open" class="nav-link" href="#">
                <span class="lnr lnr-magnifier"></span>
            </a>

        </form>

    </div>

    <div class="buttonDiv">
        <button type="button" id="boardwriter" onclick="location.href='/board/freeboard-write'">글작성</button>
    </div>


    <table class="test">
        <tr>
            <th style="width:5%">No</th>
            <th style="width:15%">제목</th>
            <th style="width:12%">작성자</th>
            <th style="width:36%">내용</th>
            <th style="width:26%">날짜</th>
            <th style="width:6%">조회수</th>
        </tr>

        <c:forEach var="fb" items="${fbList}">
            <tr>
                <td>${fb.freeboard_no}</td>
                <td>${fb.title}</td>
                <td>${fb.writer}</td>
                <td>${fb.content}</td>
                <td>${fb.reg_date}</td>
                <td>${fb.view_cnt}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="bottom_section d-flex justify-content-center">
        <nav class="bottom_nav">
            <ul class="pagination">
                <c:if test="${pm.prev}">
                    <li class="page-item">
                        <a class="page-link"
                           href="/board/freeBoard?pageNum=${fbpm.beginPage-1}&amount=${fbpm.page.amount}&keyword=${s.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="n" begin="${fbpm.beginPage}" end="${fbpm.endPage}" step="1">
                    <li class="paginate_button page-item " data-page-num="${n}">
                        <a class="page-link"
                           href="/board/freeBoard?pageNum=${n}&amount=${fbpm.page.amount}&keyword=${s.keyword}">${n}</a>
                    </li>
                </c:forEach>

                <c:if test="${fbpm.next}">
                    <li class="page-item"><a class="page-link"
                                             href="/board/freeBoard?pageNum=${fbpm.endPage + 1}&amount=${fbpm.page.amount}&keyword=${s.keyword}">next</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

<script>
    const $searchButton = document.querySelector("#side-search-open");
    const $inputName = document.querySelector("#inputName");
    const $table = document.querySelector("table");
    const $reset = document.querySelector("#reset");
    const $searchk = document.querySelector("#searchk");
    let checkTotal = 0;

    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    function signOut() {
        if (confirm('로그아웃하시겠습니까?')) {
            location.href = '/member/sign-out';
        }
    }

    function appendPageActive() {
        // 현재 내가 보고 있는 페이지 넘버
        const curPageNum = '${fbpm.page.pageNum}';
        // console.log("현재페이지: ", curPageNum);

        // 페이지 li태그들을 전부 확인해서
        // 현재 위치한 페이지 넘버와 텍스트컨텐츠가 일치하는
        // li를 찾아서 class active 부여
        const $ul = document.querySelector('.pagination');
        for (let $li of [...$ul.children]) {
            if (curPageNum === $li.dataset.pageNum) {
                $li.classList.add('active');
                break;
            }
        }
    }

    $searchButton.onclick = e => { //검색창 버튼
        location.href = "/board/infoBoard?keyword=" + $inputName.value;
    };

    /*
        $(function () { //onload되면
            *appendPageActive();*
            fetch('/api/foods/')
                .then(res => res.json())
                .then(myList => {
                    showFoodData(myList);
                });
        });*/

</script>


</body>
</html>
