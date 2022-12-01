<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>


        div.flex-column p.maintext {
            margin-left: 105px;
        }

        .boxed-page {
            min-height: 100vh;
        }

        section.board {
            margin-top: 100px;
        }

        table.suggest-board {
            width: 70%;
            border: 20px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            padding: 24px;
            background: #f4ede5;
            line-height: 202%;
            z-index: 1000;
            text-align: center;
        }

        table.suggest-board tr {
            background: #ffffff;
        }

        table.suggest-board td a {
            cursor: pointer;
        }

        button#regist {
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            margin-left: 90px;

            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }


        button.btn-info:hover {
            color: #f4ede5;
        }


        .boxed-page {
            min-height: 970px;
        }

        button#regist {
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            position: absolute;
            left: 68%;
        }


        button.btn-info:hover {
            color: #f4ede5;
        }

        div.wrapper {
            width: 100%;
            margin: auto;
            position: absolute;
            top: 25%;
        }

        section.wrapcontent {
            padding: 20px 20px 10px;
            border-radius: 1.5em;

            margin: auto;
            background: #f4ede5;
        }

        div.title {
            background: #f4ede5;
            padding-left: 0px;
        }

        #writeForm {
            padding: 0px;
        }

        h1 {
            font-weight: 600;
            font-size: 24px;
        }

        .img-2 {
            width: 17%;
            height: 600px;
            position: absolute;
            left: 130px;
            top: 25%
        }

        div.liParent li {
            text-align: center;
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
                            <a class="nav-link" id="list" href="/food-about">List</a>
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
            <div class="title col-12"><h1>문의/건의 게시판</h1></div>
            <br/>
            <form id="writeForm" class="col-12" action="/board/sboard/write" method="post">
                <div class="form-group">
                    <input type="text" id="title-input" class="form-control col-12" name="title"
                           placeholder="제목을 입력해주세요">
                    <br/>
                    <textarea class="form-control col-12" name="content" placeholder="문의사항을 입력해주세요"
                              rows="20"></textarea>
                </div>
            </form>

        </section>
        <button type="button" class="btn btn-info" id="regist">등록</button>
    </div>

    <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2"
         style="background-image: url(/resto/img/testi-bg.jpg);"> <%-- 이미지요소 --%>

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