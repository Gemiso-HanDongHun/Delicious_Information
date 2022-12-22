<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
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

        body {
            font-family: 'MaplestoryOTFBold';
        }

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }
        .dropdown-item:active {
            background: none;
        }

        div li {
            font-weight: 800;
        }

        body{
            background: whitesmoke;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin: 0;
        }

        div.flex-column li a.dropdown-item{ /*drop a태그 height 크기*/
            padding-top: 0;
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
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }
        #navbar-header .dropdown a#navibarDropdown2{
            padding-top: 0px;
            top: -38px;
            position: relative;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }


        #navbar-header .active2 a#home {
            position: relative;
            top: 40px;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active3 a#list {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-in {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-out {
            position: relative;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }


        #navbar-header .dropdown:hover {
            cursor: pointer;
        }

        #sign-out:hover {
            color: #f44336;
            cursor: pointer;
        }

        div.flex-column li a.dropdown-item{ /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        div.main-board {
            width: 37%;
            padding: 20px;
            margin: 50px auto;
            box-sizing: border-box;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            background: whitesmoke;
            margin-top: 50px;
        }

        div.main-board section.main-write div.h1-title {
            width: 50%;
            margin: auto;
        }
        div.main-board section.main-write div.h1-title #h1-title {
            font-family: 'MaplestoryOTFBold';
            text-align: center;
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 30px;
            margin-top: 15px;
        }

        div.main-board section.main-write div input:focus {
            outline: none;
            box-shadow: none;
        }

        div.main-board section.main-write label {
            font-weight: 700;
        }

        div.main-board section.main-write div.area1, div.main-board section.main-write div.area2,
        div.main-board section.main-write div.area3, div.main-board section.main-write div.area4 {
            overflow: hidden;
            margin-bottom: 15px;
        }

        div.main-board section.main-write div.area1 div.form-group1 {
            width: 30%;
            float: left;
        }

        div.main-board section.main-write div.area1 div.foodName,
        div.main-board section.main-write div.area1 div.foodKcal{
            margin-right: 5%;
        }


        div.main-board section.main-write div.area2 div.form-group2 {
            width: 30%;
            float: left;
        }

        div.main-board section.main-write div.area2 div.carbohydrate,
        div.main-board section.main-write div.area2 div.protein{
            margin-right: 5%;
        }

        div.main-board section.main-write div.area3 div.form-group3 {
            width: 22%;
            float: left;
        }

        div.main-board section.main-write div.area3 div.vitaminA,
        div.main-board section.main-write div.area3 div.vitaminC,
        div.main-board section.main-write div.area3 div.vitaminE {
            margin-right: 4%;
        }

        div.main-board section.main-write div.area4 div.form-group4 {
            width: 22%;
            float: left;

        }

        div.main-board section.main-write div.area4 div.calcium,
        div.main-board section.main-write div.area4 div.iron,
        div.main-board section.main-write div.area4 div.magnesium {
            margin-right: 4%;
        }

        div.main-board section.main-write div.area5 {
            margin-bottom: 20px;
        }

        div.main-board section.main-write div.area5 textarea {
            height: 200px;
        }

        div.main-board section.main-write div.area5 textarea:focus {
            outline: none;
            box-shadow: none;
        }

        div.main-board section.main-write div.area6 button {
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

        div.main-board section.main-write div.area6 button:hover {
            color: #fff;
            background-color: lightgray;
            cursor: pointer;
            font-weight: 700;
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
                            <a class="nav-link" id="home" href="/">Home<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓘𝓷𝓯𝓸𝓶𝓪𝓽𝓲𝓸𝓷</p>
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
                                <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
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

    <div class="main-board">
        <section class="main-write">
            <div class="h1-title">
                <h1 id="h1-title">정보게시판(수정)</h1>
            </div>

            <form id="modifyForm2">

                <div class="area1">
                    <div class="form-group1 foodName">
                        <input type="hidden" name="infoNo" value="${fo.infoNo}">
                        <label for="foodName" >음식 이름</label>
                        <input type="text" class="form-control" name="foodName" id="foodName" value="${fo.foodName}"  maxlength='40'>
                    </div>

                    <div class="form-group1 foodKcal">
                        <label for="foodKcal">칼로리</label>
                        <input type="number" class="form-control" name="kcal" id="foodKcal" value="${mn.mfood.kcal}" placeholder="kcal">
                    </div>

                    <div class="form-group1 servingSize">
                        <label for="servingSize">1일 권장량</label>
                        <input type="number" class="form-control" name="servingSize" id="servingSize" value="${mn.servingSize}" placeholder="g">
                    </div>
                </div>

                <div class="area2">
                    <div class="form-group2 carbohydrate">
                        <label for="carbohydrate">탄수화물</label>
                        <input type="number" class="form-control" name="carbohydrate" value="${mn.carbohydrate}" id="carbohydrate">
                    </div>

                    <div class="form-group2 protein">
                        <label for="protein">단백질</label>
                        <input type="number" class="form-control" name="protein" value="${mn.protein}" id="protein">
                    </div>

                    <div class="form-group2 fat">
                        <label for="fat">지방</label>
                        <input type="number" class="form-control" name="fat" value="${mn.fat}" id="fat">
                    </div>
                </div>

                <div class="area3">
                    <div class="form-group3 vitaminA">
                        <label for="vitaminA">비타민 A</label>
                        <input type="number" class="form-control" name="vitaminA" value="${mn.vitaminA}" id="vitaminA">
                    </div>

                    <div class="form-group3 vitaminC">
                        <label for="vitaminC">비타민 C</label>
                        <input type="number" class="form-control" name="vitaminC" value="${mn.vitaminC}" id="vitaminC">
                    </div>

                    <div class="form-group3 vitaminE">
                        <label for="vitaminE">비타민 E</label>
                        <input type="number" class="form-control" name="vitaminE" value="${mn.vitaminE}" id="vitaminE">
                    </div>

                    <div class="form-group3 sodium">
                        <label for="sodium">나트륨</label>
                        <input type="number" class="form-control" name="sodium" id="sodium" value="${mn.sodium}">
                    </div>
                </div>

                <div class="area4">
                    <div class="form-group4 calcium">
                        <label for="calcium">칼슘</label>
                        <input type="number" class="form-control" name="calcium" value="${mn.calcium}" id="calcium">
                    </div>

                    <div class="form-group4 iron">
                        <label for="iron">철분</label>
                        <input type="number" class="form-control" name="iron" value="${mn.iron}" id="iron">
                    </div>

                    <div class="form-group4 magnesium">
                        <label for="magnesium">마그네슘</label>
                        <input type="number" class="form-control" name="magnesium" value="${mn.magnesium}" id="magnesium">
                        <input type="hidden" class="form-control" name="nutrientNo" value="${mn.nutrientNo}" id="nutrientNo">
                        <input type="hidden" class="form-control" name="foodNo" value="${mn.mfood.foodNo}" id="foodNo">
                    </div>

                    <div class="form-group4 omega">
                        <label for="omega">오메가3</label>
                        <input type="number" class="form-control" name="omega" value="${mn.omega}"  id="omega">
                    </div>
                </div>

                <div class="area5">
                    <label for="content">내용</label>
                    <textarea type="text" class="form-control" name="content" id="content">${fo.content}</textarea>
                </div>
            </form>

            <div class="area6">
                <button type="button" id="modify">수정완료</button>
            </div>

        </section>
    </div>

</div>
</body>

<script>
    const $modBtn = document.getElementById('modify');

    //수정버튼
    $modBtn.onclick = e => {
        if(confirm("정말로 수정 하시겠습니까?")){
            const $form = document.getElementById('modifyForm2');
            $form.action="/board/infoBoard/modify";
            $form.method="post";
            $form.submit();
        }
    };



</script>
</html>
