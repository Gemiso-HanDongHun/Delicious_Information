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

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }
        .dropdown-item:active {
            background: none;
        }

        body {
            font-family: 'MaplestoryOTFBold';
        }

        div li {
            font-weight: 800;
        }

        body {
            background: whitesmoke;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin: 0;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
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

        #navbar-header .dropdown {
            top: 65%;
            height: 1px;
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


        #navbar-header .active2 a#home {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active3 a#list {
            position: relative;
            top: 40px;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-in {
            position: relative;
            top: 40px;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-out {
            position: relative;
           /* background: #FFFFFF;*/
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

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0;
        }


        div.main-board {
            width: 37%;
            padding: 20px;
            margin: 50px auto;
            box-sizing: border-box;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            background: whitesmoke;
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
        div.main-board section.main-write div.area1 div.foodKcal {
            margin-right: 5%;
        }


        div.main-board section.main-write div.area2 div.form-group2 {
            width: 30%;
            float: left;
        }

        div.main-board section.main-write div.area2 div.carbohydrate,
        div.main-board section.main-write div.area2 div.protein {
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
                            <a class="nav-link" id="home" href="/">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓘𝓷𝓯𝓸𝓶𝓪𝓽𝓲𝓸𝓷</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                정보게시판
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
                                <a class="nav-link" id="sign-out" onclick="signOut()">로그아웃</a>
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
                                       id="sign-out" onclick="signOut()">로그아웃</a>
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
                <h1 id="h1-title">음식 영양성분 추가</h1>
            </div>

            <form id="mfood">

                <div class="area1">
                    <div class="form-group1 foodName ">
                        <label for="foodName">음식 이름 (최대 60글자)</label>
                        <input type="text" class="form-control" name="name" id="foodName" maxlength='40'>
                    </div>

                    <div class="form-group1 foodKcal">
                        <label for="foodKcal">칼로리</label>
                        <input type="number" class="form-control" name="kcal" id="foodKcal" placeholder="kcal">
                    </div>

                    <div class="form-group1 servingSize">
                        <label for="servingSize">1일 권장량</label>
                        <input type="number" class="form-control" name="servingSize" id="servingSize" placeholder="g">
                    </div>

                </div>

                <div class="area2">
                    <div class="form-group2 carbohydrate">
                        <label for="carbohydrate">탄수화물</label>
                        <input type="number" class="form-control" name="carbohydrate" id="carbohydrate" placeholder="g">
                    </div>

                    <div class="form-group2 protein">
                        <label for="protein">단백질</label>
                        <input type="number" class="form-control" name="protein" id="protein" placeholder="g">
                    </div>

                    <div class="form-group2 fat">
                        <label for="fat">지방</label>
                        <input type="number" class="form-control" name="fat" id="fat" placeholder="g">
                    </div>
                </div>

                <div class="area3">
                    <div class="form-group3 vitaminA">
                        <label for="vitaminA">비타민 A</label>
                        <input type="number" class="form-control" name="vitaminA" id="vitaminA" placeholder="㎍">
                    </div>

                    <div class="form-group3 vitaminC">
                        <label for="vitaminC">비타민 C</label>
                        <input type="number" class="form-control" name="vitaminC" id="vitaminC" placeholder="mg">
                    </div>

                    <div class="form-group3 vitaminE">
                        <label for="vitaminE">비타민 E</label>
                        <input type="number" class="form-control" name="vitaminE" id="vitaminE" placeholder="mg">
                    </div>

                    <div class="form-group3 sodium">
                        <label for="sodium">나트륨</label>
                        <input type="number" class="form-control" name="sodium" id="sodium" placeholder="mg">
                    </div>
                </div>

                <div class="area4">
                    <div class="form-group4 calcium">
                        <label for="calcium">칼슘</label>
                        <input type="number" class="form-control" name="calcium" id="calcium" placeholder="mg">
                    </div>

                    <div class="form-group4 iron">
                        <label for="iron">철분</label>
                        <input type="number" class="form-control" name="iron" id="iron" placeholder="㎍">
                    </div>

                    <div class="form-group4 magnesium">
                        <label for="magnesium">마그네슘</label>
                        <input type="number" class="form-control" name="magnesium" id="magnesium" placeholder="mg">
                    </div>

                    <div class="form-group4 omega">
                        <label for="omega">오메가3</label>
                        <input type="number" class="form-control" name="omega" id="omega" placeholder="g">
                    </div>
                </div>

                <div class="area5">
                    <label for="content">내용</label>
                    <textarea type="text" class="form-control" name="content" id="content"></textarea>
                </div>


                <div class="area6">
                    <button type="button" id="regist" style="font-size: 14px; margin-left : 20px">등록</button>
                    <button type="reset" style="font-size: 14px; ">초기화</button>
                </div>
            </form>

        </section>
    </div>

</div>


</body>
<script>
    const $regist = document.querySelector("#regist");
    const $foodName = document.querySelector("#foodName");
    const $foodK = document.querySelector("#foodKcal");
    const $servingSize = document.querySelector("#servingSize");

    function isValiDate(){
        if($foodName.value.trim()=="") {
            alert("음식 이름을 입력해주세요");
            return false;
        }else if($foodK.value.trim()==""){
            alert("칼로리를 입력해주세요");
            return false;
        }else if($servingSize.value.trim()==""){
            alert("1일 권장량을 입력해주세요");
            return false;
        }
        return true;
    }

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



    $regist.onclick = e => {
        const $info = document.querySelector("#mfood");

        if (isValiDate()) {
            $info.action = "/board/infoBoard/write"
            $info.method = "post";
            $info.submit();
        }
    }

</script>

</html>
