<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>

        .boxed-page {
            min-height: 100vh;
            background-image: url(/resto/img/pasta.jpg);
            background-size: cover;
        }
        section.board{
            margin-top: 100px;
        }

        table.suggest-board{
            width: 70%;
            border: 20px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            padding: 24px;
            background: #f4ede5;
            line-height: 202%;
            text-align: center;
        }
        table.suggest-board tr {
            background: #ffffff;
        }
        table.suggest-board td a{
            cursor: pointer;
            color: skyblue;
        }

        button#regist{
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            margin-left: 90px;

            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        button.btn-info:hover{
            color: #f4ede5;
        }

        div.flex-column li a.dropdown-item{ /*drop a태그 height 크기*/
            padding-top: 0px;
        }


        div.buttonDiv {
            position: absolute;
            width: 120px;
            height: 45px;
            top: 170px;
            margin-left: 65%;
        }

        div.div_search {
            width: 21%;
            margin: 70px 0 30px 40%;
            display: flex;
            border-radius: 1em;
            font-size: 0.8vw;
            border: 2px solid #000000;
            line-height: 180%;
            padding-left: 10px;
            margin-top: 110px;
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

        /*#boardwriter {*/
        /*    width: 120px;*/
        /*    height: 45px;*/
        /*    border: 0;*/
        /*    border-radius: 2em;*/
        /*}*/
        #boardwriter:hover {
            color: #fff;
            background-color: lightgray;
            cursor: pointer;
            font-weight: 700;
        }

        #nav-li #navbarDropdown {
            width: 100px;
            padding-top: 60px;
            margin-top: 45px;
            position: absolute;
        }


        #navbar-header .dropdown .dropdown-menu {
            top: 80%;
            display: none;
        }

        #navbar-header .dropdown{
            top:65%;
            height: 1px;
        }

        #navbar-header .dropdown a#navibarDropdown{
            padding-top: 0px;
            top: -38px;
            position: relative;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active2 a#home {
            position: relative;
            top: 40px;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active3 a#list {
            position: relative;
            top: 40px;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-in {
            position: relative;
            top: 40px;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-out {
            position: relative;
            top: 40px;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#loginAccount {
            position: relative;
            top: 40px;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        div.bottom_section ul li a {
            color: black;
        }

        /* 목록 마우스 오버시 (현재 마우스 위치를 알기 위해서) */
        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: lightgray;
            color: #ffff;
        }

        /* List CSS */
        /* 테이블 전체 */
        .test {
            width: 70%;
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
            background: lightgray;
            color: #ffff;
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






    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul id="ulwidth" class="navbar-nav d-flex justify-content-between ">
                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx">
                        <li class="nav-item active2">
                            <a class="nav-link" id="home" href="/food-main">Home<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food-about">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop" >
                            <li class="nav-item dropdown" id="nav-li">
                                <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    게시판
                                </a>
                                <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                       onclick="location.href='/board/freeBoard'">자유게시판</a>
                                    <a class="dropdown-item"
                                       onclick="location.href='/board/infoBoard'">정보게시판</a>
                                    <a class="dropdown-item"
                                       onclick="location.href='/board/suggestionBoard'">건의/문의게시판</a>
                                </div>

                            </li>
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign active4">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <li class="nav-item sign active5">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/info/${loginUser.account}'">${loginUser.name}님</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" href="/member/sign-out">로그아웃</a>
                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>


    <div class="div_search">
        <form id="searchForm">
            <input type="text" placeholder="검색하고 싶은 음식을 적어주세요" name="keyword" id="inputName"
                   value="${s.keyword}">
            <a id="side-search-open" class="nav-link" href="#">
                <span class="lnr lnr-magnifier"></span>
            </a>

        </form>
    </div>

<%--    <div class="buttonDiv">--%>
<%--        <button type="button" id="boardwriter" onclick="location.href='/board/suggestionBoard/write'">작성</button>--%>
<%--    </div>--%>




    <table class="test">
        <tr>
            <th style="width:10%">No</th>
            <th style="width:45%">제목</th>
            <th style="width:15%">작성자</th>
            <th style="width:25%">작성일</th>
            <th style="width:5%">조회수</th>
        </tr>

        <c:forEach var="sb" items="${sl}">
            <tr>
                <td>${sb.boardNo}</td>
                <td onclick="location.href='/board/suggestionBoard/detail/${sb.boardNo}'">${sb.title}[${sb.replyCount}]</td>
                <td>${sb.writer}</td>
                <td>${sb.regdate}</td>
                <td>${sb.hit}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="bottom_section d-flex justify-content-center">
        <nav class="bottom_nav">
            <ul class="pagination">
                <c:if test="${pm.prev}">
                    <li class="page-item">
                        <a class="page-link"
                           href="/board/suggestionBoard?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                    <li class="paginate_button page-item " data-page-num="${n}">
                        <a class="page-link"
                           href="/board/suggestionBoard?pageNum=${n}&amount=${pm.page.amount}&keyword=${s.keyword}">${n}</a>
                    </li>
                </c:forEach>

                <c:if test="${pm.next}">
                    <li class="page-item"><a class="page-link"
                                             href="/board/suggestionBoard?pageNum=${pm.endPage + 1}&amount=${pm.page.amount}&keyword=${s.keyword}">next</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>

</div>
<script>
    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }
</script>

</body>
</html>