<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="../food/include/header_css.jsp" %>

    <!-- jquery -->
    <script src="/js/jquery-3.3.1.min.js"></script>

    <style>
        body {
            background-color: whitesmoke;
        }

        .boxed-page {
            min-height: 100vh;
        }

        .boxed-page {
            min-height: 970px;
        }

        div.col-12 {
            text-align: center;
        }

        div p {
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
            left: 61%;
            margin-top: 20px;
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
                            <a class="nav-link" id="home" href="/food-main">Home<span
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
            <div class="title col-12"><h1>자유게시판(수정)</h1></div>
            <br/>
            <form id="modifyForm" class="col-12">
                <div class="form-group">
                    <p>제목(수정)</p>
                    <input type="hidden" name="freeboardNo" value="${fb.freeboardNo}">
                    <input type="text" id="title-input" class="form-control col-12" name="title"
                           value="${fb.title}"><br/>
                    <p>내용(수정)</p>
                    <textarea class="form-control col-12" rows="15" name="content">${fb.content}</textarea>
                </div>
            </form>

        </section>
        <div class="btn-group btn-group-lg custom-btn-group" role="group">
            <button id="mod-btn" type="button" class="btn btn-warning"
                    style="background-color: whitesmoke; font-weight: 600">수정완료
            </button>
        </div>
    </div>

</div>
</body>
<script>
    const $modBtn = document.getElementById('mod-btn');
    const $listBtn = document.getElementById('list-btn');

    //수정버튼
    $modBtn.onclick = e => {
        if (confirm("정말로 수정 하시겠습니까?")) {
            const $form = document.getElementById('modifyForm');
            $form.action = "/board/freeboard-modify";
            $form.method = "post";
            $form.submit();
        }
    };

    //목록버튼
    $listBtn.onclick = e => {
        console.log('목록버튼 클릭!');
        location.href = '/board/freeBoard';
    };

</script>
</html>