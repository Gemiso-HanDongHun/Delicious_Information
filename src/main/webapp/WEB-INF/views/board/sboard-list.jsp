<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>

        div.flex-column p.maintext {
            margin-left: 105px;
        }

        .boxed-page {
            height: 970px;
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
            z-index: 1000;
            text-align: center;
        }
        table.suggest-board tr {
            background: #ffffff;
        }
        table.suggest-board td a{
            cursor: pointer;
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







    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/food-main">free <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">info</a>
                        </li>

                        <li>
                            <p class="maintext">𝓓𝓮𝓵𝓲𝓬𝓲𝓸𝓾𝓼 𝓘𝓷𝓯𝓸𝓻𝓶𝓪𝓽𝓲𝓸𝓷</p>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="foodlist" href="/board/sboard/list">suggest</a>
                        </li>
                    </div>
                </ul>
            </div>
        </div>
    </nav>



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
                <td>${s.title}</td>
                <td>${s.writer}</td>
                <td>${s.regdate}</td>
                <td>${s.hit}</td>
            </tr>
            </c:forEach>

        </table>
        <button type="button" class="btn btn-info" onclick="location.href='/board/suggestionBoard/write'" id="regist" >등록</button>
    </section>

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
