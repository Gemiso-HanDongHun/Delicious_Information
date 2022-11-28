<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>

        .boxed-page {
            min-height: 970px;
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
            /*background-color: #005cbf;*/
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

        #boardwriter {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
        }
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
            top:-34px;
            position: relative;
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
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">About</a>
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
                        <c:if test="${empty loginUser}">i
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <li class="nav-item sign">
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

    <div class="buttonDiv">
        <button type="button" id="boardwriter" onclick="location.href='/board/infoform'">작성</button>
    </div>




    <section class="board d-flex justify-content-center">
        <table class="suggest-board">
            <thead>
                    <tr>
                        <th style="width: 5%">추천</th>
                        <th style="width: 5%">비추천</th>
                        <th style="width: 5%">No</th>
                        <th style="width: 43%">제목</th>
                        <th style="width: 15%">작성자</th>
                        <th style="width: 20%">작성일</th>
                        <th style="width: 5%">조회수</th>
                    </tr>
            </thead>
            <c:forEach var="s" items="${sl}">
            <tr>
                <td><a><i class="far fa-thumbs-up"></i></a></td>
                <td><a><i class="far fa-thumbs-down"></i></a></td>
                <td>${s.boardNo}</td>
                <td><a href="/board/suggestionBoard/detail/${s.boardNo}" >${s.title}</a></td>
                <td>${s.writer}</td>
                <td>${s.regdate}</td>
                <td>${s.hit}</td>
            </tr>
            </c:forEach>

        </table>



    </section>
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
    <c:if test="${!empty loginUser}">
        <button type="button" class="btn btn-info" onclick="location.href='/board/suggestionBoard/write'" id="regist" >등록</button>
    </c:if>

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
