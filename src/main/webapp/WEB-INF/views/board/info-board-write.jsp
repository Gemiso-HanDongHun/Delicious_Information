<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>

        body{
            background: whitesmoke;
        }

        .boxed-page {
            min-height: 100vh;
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
            top:-34px;
            position: relative;
        }

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }


        div.main-board {
            width: 50%;
            padding: 10px;
            margin: 50px auto;
            box-sizing: border-box;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            background: whitesmoke;
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
            width: 30%;
            float: left;
        }

        div.main-board section.main-write div.area3 div.vitaminA,
        div.main-board section.main-write div.area3 div.vitaminC{
            margin-right: 5%;
        }

        div.main-board section.main-write div.area4 div.form-group4 {
            width: 30%;
            float: left;
        }

        div.main-board section.main-write div.area4 div.calcium,
        div.main-board section.main-write div.area4 div.iron {
            margin-right: 5%;
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
            border: 2px solid lightgray;
            border-radius: 2em;
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
                                <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="about" href="/food-about">About</a>
                            </li>

                        </div>
                        <div class="flex-column titlewidth justify-content-center">
                            <p id="title">𝓘𝓷𝓯𝓸 𝓑𝓸𝓪𝓻𝓭</p>
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

        <div class="main-board">
            <section class="main-write">
                <div>
                    <h1>추가할 음식을 작성해 주세요</h1>
                </div>

                <form id="mfood">

                    <div class="area1">
                        <div class="form-group1 foodName ">
                            <label for="foodName">음식 이름</label>
                            <input type="text" class="form-control" name="name" id="foodName" value="">
                        </div>

                        <div class="form-group1 foodKcal">
                            <label for="foodKcal">칼로리</label>
                            <input type="number" class="form-control" name="kcal" id="foodKcal" placeholder="kcal">
                        </div>

                        <div class="form-group1 sodium">
                            <label for="sodium">나트륨</label>
                            <input type="number" class="form-control" name="sodium" id="sodium">
                        </div>
                    </div>

                    <div class="area2">
                        <div class="form-group2 carbohydrate">
                            <label for="carbohydrate">탄수화물</label>
                            <input type="number" class="form-control" name="carbohydrate" id="carbohydrate">
                        </div>

                        <div class="form-group2 protein">
                            <label for="protein">단백질</label>
                            <input type="number" class="form-control" name="protein" id="protein">
                        </div>

                        <div class="form-group2 fat">
                            <label for="fat">지방</label>
                            <input type="number" class="form-control" name="fat" id="fat">
                        </div>
                    </div>

                    <div class="area3">
                        <div class="form-group3 vitaminA">
                            <label for="vitaminA">비타민 A</label>
                            <input type="number" class="form-control" name="vitaminA" id="vitaminA">
                        </div>

                        <div class="form-group3 vitaminC">
                            <label for="vitaminC">비타민 C</label>
                            <input type="number" class="form-control" name="vitaminC" id="vitaminC">
                        </div>

                        <div class="form-group3 vitaminE">
                            <label for="vitaminE">비타민 E</label>
                            <input type="number" class="form-control" name="vitaminE" id="vitaminE">
                        </div>
                    </div>

                    <div class="area4">
                        <div class="form-group4 calcium">
                            <label for="calcium">칼슘</label>
                            <input type="number" class="form-control" name="calcium" id="calcium">
                        </div>

                        <div class="form-group4 iron">
                            <label for="iron">철분</label>
                            <input type="number" class="form-control" name="iron" id="iron">
                        </div>

                        <div class="form-group4 magnesium">
                            <label for="magnesium">마그네슘</label>
                            <input type="number" class="form-control" name="magnesium" id="magnesium">
                        </div>
                    </div>

                    <div class="area5">
                        <label for="content">내용</label>
                        <textarea type="text" class="form-control" name="content" id="content"></textarea>
                    </div>

                    <div class="area6">
                        <button type="button" id="regist">작성 완료</button>
                        <button type="reset">초기화</button>
                        <button type="button" onclick="location.href='/board/infoBoard'">목록으로</button>
                    </div>
                </form>
            </section>
        </div>

    </div>




</body>
<script>
    const $regist = document.querySelector("#regist");
    $regist.onclick=e=>{
        const $info = document.querySelector("#mfood");
        $info.action="/board/infoBoard/write"
        $info.method="post";
        $info.submit();
    }

</script>

</html>
