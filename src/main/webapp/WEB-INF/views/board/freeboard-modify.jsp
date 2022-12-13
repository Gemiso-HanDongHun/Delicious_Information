<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="../food/include/header_css.jsp" %>

    <!-- jquery -->
    <script src="/js/jquery-3.3.1.min.js"></script>

    <style>

        #navbar-header .navbar-nav .dropdown-menu{
            border: 2px solid lightgrey;
            box-shadow: none;
        }

        @font-face {
            font-family: 'MaplestoryOTFBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        div li {
            font-family: 'MaplestoryOTFBold';
            font-weight: 800;
        }

        body {
            background-color: whitesmoke;
        }

        .boxed-page {
            min-height: 100vh;
        }

        .boxed-page {
            min-height: 970px;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin: 0;
        }

        div.col-12 {
            text-align: center;
        }

        div p#p1, p#p2 {
            font-weight: 800;
            margin-left: 8px;
        }


        section.wrapcontent {
            padding: 20px 20px 10px;
            border-radius: 1.5em;
            margin: 100px auto 0px;
            background: whitesmoke;
            width: 37%;
        }

        div.custom-btn-group {
            width: 120px;
            height: 45px;
            border: 0;
            margin-top: 45px;
            margin-bottom: 10px;
            background-color: whitesmoke;
            border-radius: 2em;
            /*border: 1px solid black;*/
            font-weight: 800;
            float: right;
            z-index: 2000;
            color: black;
            font-weight: 700;
            font-size: 18px;
        }

        div.title {
            background: whitesmoke;
            padding-left: 0px;
        }

        button.btn-warning {
            border: 1px solid whitesmoke;
        }

        button.btn-warning:hover {
            border: 1px solid whitesmoke;
            background-color: lightgray;
        }

        #navbar-header .dropdown .dropdown-menu {
            top: 80%;
            display: none;
        }

        #navbar-header .dropdown {
            top: 65%;
            height: 1px;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        #navbar-header .dropdown a#navibarDropdown {
            padding-top: 0px;
            top: -38px;
            position: relative;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .dropdown a#navibarDropdown2 {
            padding-top: 0px;
            top: -38px;
            position: relative;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        h1 {
            font-weight: 600;
            font-size: 24px;
        }

        div.liParent li {
            text-align: center;
        }

        input.form-control:disabled {
            background: #FFFFFF;
        }

        textarea.form-control:disabled {
            background: #FFFFFF;
        }

        p#title{
            font-weight: 16;
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
                            <a class="nav-link" id="home" href="/">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓕𝓻𝓮𝓮𝓭𝓸𝓶</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                자유게시판
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
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/mypage'">${loginUser.name}님</a>
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
                                       href="/member/mypage">마이 페이지</a>
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
            <div class="title col-12"><h1>자유게시판(수정)</h1></div>
            <br/>
            <form id="modifyForm" class="col-12">
                <div class="form-group">
                    <p id="p1">제목(수정)</p>
                    <input type="hidden" name="freeboardNo" value="${fb.freeboardNo}">
                    <input type="text" id="title-input" class="form-control col-12" name="title"
                           value="${fb.title}"><br/>
                    <p id="p2">내용(수정)</p>
                    <textarea class="form-control col-12" rows="15" name="content">${fb.content}</textarea>
                </div>
            </form>

            <div class=btn-modify >
                <button id="mod-btn" type="button" class="btn btn-warning"
                        style="background-color: whitesmoke; font-weight: 600">수정완료
                </button>
            </div>

        </section>

    </div>

</div>
</body>
<script>
    const $modBtn = document.getElementById('mod-btn');

    //수정버튼
    $modBtn.onclick = e => {
        if (confirm("정말로 수정 하시겠습니까?")) {
            const $form = document.getElementById('modifyForm');
            $form.action = "/board/freeBoard/modify";
            $form.method = "post";
            $form.submit();
        }
    };


</script>
</html>