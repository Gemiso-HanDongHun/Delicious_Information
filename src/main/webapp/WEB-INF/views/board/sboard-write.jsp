<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>
        body{
            background-color: whitesmoke;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        #navbar-header .dropdown .dropdown-menu {
            top: 80%;
            display: none;
        }

        #navbar-header .dropdown a#navibarDropdown {
            padding-top: 0px;
            top: -38px;
            position: relative;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .dropdown a#navibarDropdown2 {
            padding-top: 0px;
            top: -38px;
            position: relative;
            background: #FFFFFF;
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .dropdown {
            top: 65%;
            height: 1px;
        }

        .boxed-page {
            min-height: 100vh;
        }

        table.suggest-board tr {
            background: #ffffff;
        }

        table.suggest-board td a {
            cursor: pointer;
        }

        button#regist {
            background-color: whitesmoke;
            color: black;
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            border: 1px solid whitesmoke;
            padding: 5px;
            background-color: whitesmoke;
            position: absolute;
            left: 64%;
            margin-top: 30px;
            left: 61%;
        }

        button#regist:hover{
            background-color: lightgray;
            cursor: pointer;
            font-weight: 700;
        }

        button.btn-info:hover {
            color: whitesmoke;
        }

        div.wrapper {
            width: 100%;
            /*margin: auto;*/
            position: absolute;
            top: 20%;
        }

        section.wrapcontent {
            padding: 20px 20px 10px;
            border-radius: 1.5em;

            margin: auto;
            background: whitesmoke;
            width: 37%;
        }

        div.title {
            background: whitesmoke;
            padding-left: 0px;
        }

        #writeForm {
            padding: 0px;
        }

        div p{
            font-weight: 800;
            margin-left: 8px;
        }

        h1 {
            font-weight: 600;
            font-size: 24px;
        }

        div.liParent li {
            text-align: center;
        }

        div.col-12 {
            text-align: center;
        }

        p#title{
            font-weight: 16;
        }


    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">

    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul id="ulwidth" class="navbar-nav d-flex justify-content-between ">
                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx">
                        <li class="nav-item active2">
                            <a class="nav-link" id="home" href="/food-main">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓢𝓾𝓰𝓰𝓮𝓼𝓽𝓲𝓸𝓷</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                문의게시판
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"
                                   onclick="location.href='/board/freeBoard'">자유게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/infoBoard'">정보게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/suggestionBoard'">문의게시판</a>
                            </div>

                        </li>
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign active4">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <%--<li class="nav-item sign active5">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/info/${loginUser.account}'">${loginUser.name}님</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" href="/member/sign-out">로그아웃</a>
                            </li>--%>

                            <li class="nav-item dropdown" id="nav-li">
                                <a class="nav-link dropdown-toggle" id="navibarDropdown2" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${loginUser.name}님
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                       href="/member/info/${loginUser.account}">마이 페이지</a>
                                    <a class="dropdown-item"
                                       id="sign-out" href="/member/sign-out">로그아웃</a>
                                </div>

                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>

    <div class="wrapper">
        <section class="d-flex align-items-center flex-column col-5 wrapcontent">
            <div class="title col-12"><h1>문의게시판 글쓰기</h1></div>
            <br/>
            <form id="writeForm" class="col-12" action="/board/sboard/write" method="post">
                <div class="form-group">
                    <p>제목</p>
                    <input type="text" id="title-input" class="form-control col-12" name="title"
                           placeholder="제목을 입력해주세요">
                    <br/>
                    <p>내용</p>
                    <textarea class="form-control col-12" name="content" placeholder="문의사항을 입력해주세요"
                              rows="16"></textarea>
                </div>
            </form>

        </section>
        <button type="button" class="btn btn-info" id="regist">등록</button>
    </div>

</div>
</body>
<script>
    const $writeButton = document.querySelector("#regist");
    $writeButton.onclick = e => {
        const $writeForm = document.querySelector("#writeForm");
        $writeForm.method = "post";
        $writeForm.action = "/board/suggestionBoard/write";
        $writeForm.submit();


    };

</script>
</html>