<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 메뉴 영양분 정보 --%>

<!DOCTYPE html>

<!--
Resto by GetTemplates.co
URL: https://gettemplates.co
-->

<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Delicious-Info</title>
    <meta name="description" content="Resto">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="/resto/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/resto/vendor/select2/select2.min.css">
    <link rel="stylesheet" href="/resto/vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/brands.css">

    <!-- Fonts -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Josefin+Sans:300,400,700">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- CSS -->
    <link rel="stylesheet" href="/resto/css/style.min.css">
    <link rel="stylesheet" href="/food-nutrient/food-nutrient.css">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

    <style>
        #navbar-header .navbar-nav .dropdown-menu {
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

        li a#navbarDropdown {
            width: 150px;
        }

        @font-face {
            font-family: 'Ansungtangmyun-Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/Ansungtangmyun-Bold.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        div p5 {
            font-family: 'MaplestoryOTFBold';
        }

        table.reco tr#lili td {
            font-family: 'MaplestoryOTFBold';
        }

        @font-face {
            font-family: 'ONE-Mobile-POP';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-POP.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        table.recommend-nutrients tr#lili td {
            font-family: 'MaplestoryOTFBold';
        }

        aside {
            font-family: 'MaplestoryOTFBold';
        }

        div.nt_row h4 {
            font-family: 'MaplestoryOTFBold';
            font-size: 14px;
        }

        h4#m1, #m2, #m3, #m4, #m5, #m6, #m7, #m8, #m9, #m10, #m11 {
            font-size: 14px;
            margin-top: 2px;
        }

        h4#p1, #excess, #excess2 {
            font-size: 14px;
            margin-top: 7px;
        }

        div p4 {
            font-family: 'MaplestoryOTFBold';
            font-size: 15px;
        }

        tr#li th {
            font-family: 'MaplestoryOTFBold';
            font-size: 16px;
        }

        div.mb-5 h2 {
            font-family: 'MaplestoryOTFBold';
        }


    </style>

</head>
<body data-spy="scroll" data-target="#navbar">
<div id="side-nav" class="sidenav">
    <a href="javascript:void(0)" id="side-nav-close">&times;</a>

    <div class="sidenav-content">
        <p>
            Kuncen WB1, Wirobrajan 10010, DIY
        </p>
        <p>
            <span class="fs-16 primary-color">(+68) 120034509</span>
        </p>
        <p>info@yourdomain.com</p>
    </div>
</div>
<div id="side-search" class="sidenav">
    <a href="javascript:void(0)" id="side-search-close">&times;</a>
    <div class="sidenav-content">
        <form action="">

            <div class="input-group md-form form-sm form-2 pl-0">
                <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="input-group-text red lighten-3" id="basic-text1">
                        <i class="fas fa-search text-grey" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>

</div>
<div id="canvas-overlay"></div>
<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/food-about">About</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/food/list">List</a>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                성별 : 여자
                            </a>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#"
                                   onclick="location.href='/food/nutrient/${fn.food.foodNo}'">남자</a>
                                <%--                                <a class="dropdown-item" href="/food-about">여자</a>--%>
                            </div>

                        </li>
                    </div>
                </ul>

                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item">
                            <a class="nav-link" id="nene"
                               onclick="location.href='/food/about/carb'">영양소 효능</a>
                        </li>
                    </div>
                </ul>

                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">


                        <c:if test="${empty loginUser}">
                            <li class="nav-item">
                                <a class="nav-link" id="nene2"
                                   onclick="location.href='/member/sign-in'">로그인</a>
                            </li>
                        </c:if>

                        <c:if test="${!empty loginUser}">
                            <li class="nav-item">
                                <a class="nav-link" id="sign-out" onclick="signOut()">로그아웃</a>
                            </li>
                        </c:if>

                    </div>
                </ul>



            </div>
        </div>
    </nav>

    <!-- Menu Section -->

    <section id="gtco-menu" class="section-padding">

        <aside class="aside">
            <div class="side-bar-list">
                <div class="myList">내가 선택한 음식목록</div>
                <div>~~~~~~~~~~~~~~~~~~</div>
                <div id="mine">

                </div>
            </div>

        </aside>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
        <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
        <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

        <script type="text/babel">

            function Food(props) {
                return (
                    <div className="my-food">
                        <p>{props.name}
                        </p>
                    </div>
                );
            }

            function Getbr() {
                return (
                    <br/>
                );
            }

            function List(props) {
                var myList = props.myList;
                //tr을 반복한 컨테츠를 구성
                var tag = []; //여기에 tr을 모아 둘것임
                for (let i = 0; i < myList.length; i++) {
                    let fn = myList[i];
                    if (i < 8) {
                        tag.push(<Food name={fn.food.name}/>); //10
                    }
                }

                return (
                    <div className="my-food-list">
                        {tag}
                    </div>

                );
            }

            function printList(myList) {
                var root = ReactDOM.createRoot(document.getElementById("mine"));
                root.render(<List myList={myList}/>);
            }
        </script>

        <script>
            const $searchButton = document.querySelector("#side-search-open");
            const $inputName = document.querySelector("#inputName");
            const $table = document.querySelector("table");
            const $reset = document.querySelector("#reset");
            let checkTotal = 0;

            /*  탄수화물: {props.carbohydrate}g
                                지방 : {props.fat}g
                                단백질 : {props.protein}g</p>*/

            function showFoodData(myList) { //선택한 음식 보여주기
                printList(myList);
                checkTotal = myList.length;
                for (let i = 0; i < myList.length; i++) {
                    let fn = myList[i];
                    let $inputBox = document.getElementById(fn.food.foodNo);
                    console.log($inputBox);
                    if ($inputBox !== null) {
                        $inputBox.setAttribute("checked", "checked");
                    }
                }
            }

            function resetSession(myList) {
                printList(myList);
                checkTotal = myList.length;
                for (let i = 0; i < 15; i++) {
                    let $inputBox = document.querySelectorAll(".select");
                    $inputBox[i].checked = false;
                }
            }

            $(function () { //onload되면
                fetch('/api/foods/')
                    .then(res => res.json())
                    .then(myList => {
                        showFoodData(myList);
                    });
            });

            function signOut() {
                if (confirm('로그아웃하시겠습니까?')) {
                    location.href = '/member/sign-out';
                }
            }

        </script>

        <div class="container">
            <div class="section-content">
                <div class="row mb-5">
                    <h2>
                        ${fn.food.name} 영양 정보(${fn.servingSize}g)
                    </h2>
                </div>

                <div>
                    <p4>⠀${fn.food.kcal}kcal⠀</p4>

                </div>

                <div>
                    <p5>부족한 영양분</p5>
                </div>
                <div class="recomend">

                    <table class="reco">
                        <tr id="li">
                            <th>부족한 영양분을 채워줄 음식</th>
                        </tr>


                        <c:if test="${!empty loginUser}">
                            <c:forEach var="f" begin="0" end="17" items="${tl}">
                                <tr id="lili">

                                    <td onclick="location.href='/food/nutrient2/${f.food.foodNo}'">${f.food.name}(${f.food.kcal}kcal)</td>

                                </tr>
                            </c:forEach>
                        </c:if>

                        <c:if test="${empty loginUser}">
                            <tr id="lili">

                                <td onclick="location.href='/member/sign-in'">회원만 이용할 수 있습니다.</td>

                            </tr>
                        </c:if>

                    </table>
                </div>
                <div class="recomend">

                    <table class="recommend-nutrients">

                        <tr id="li">
                            <th>추천 영양제</th>
                        </tr>

                        <c:if test="${!empty loginUser}">
                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EB%B9%84%ED%83%80%EB%AF%BCA&channel=user'">비타민 A</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EB%B9%84%ED%83%80%EB%AF%BCC&channel=user'">비타민 C</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EB%B9%84%ED%83%80%EB%AF%BCE&channel=user'">비타민 E</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EC%98%A4%EB%A9%94%EA%B0%803&channel=auto'">오메가3</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EC%B9%BC%EC%8A%98&channel=auto'">칼슘</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EC%B2%A0%EB%B6%84&channel=auto'">철분</td>
                                </tr>
                            </c:forEach>

                            <c:forEach var="sm" begin="1" end="1" items="${sl}">
                                <tr id="lili">
                                    <td onclick="location.href='https://www.coupang.com/np/search?component=&q=%EB%A7%88%EA%B7%B8%EB%84%A4%EC%8A%98&channel=auto'">마그네슘</td>
                                </tr>
                            </c:forEach>
                        </c:if>

                        <c:if test="${empty loginUser}">
                            <tr id="lili">

                                <td onclick="location.href='/member/sign-in'">회원만 이용할 수 있습니다.</td>

                            </tr>
                        </c:if>


                    </table>

                </div>

                <div class="nt_row">
                    <div class="nt_rowinner">

                        <div class="col-lg-4 menu-wrap" id="nt_row1">

                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀탄수화물</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m1">${fn.carbohydrate}g</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀단백질</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price"
                                                style="color: lightcoral" id="m2">${fn.protein}g</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀지방</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m3">${fn.fat}g</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀나트륨</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m4">${fn.sodium}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                        <%--  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ   필요한 성분  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --%>
                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ--%>

                        <div class="col-lg-4 menu-wrap" id="nt_row1">

                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀탄수화물</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.carbohydrate > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.carbohydrate}g</h4>
                                            </c:if>

                                            <c:if test="${tn.carbohydrate <= 0}">
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess">
                                                    초과</h4>
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2">
                                                    (${tn.carbohydrate}g)</h4>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀단백질</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.protein > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.protein}g</h4>
                                            </c:if>

                                            <c:if test="${tn.protein <= 0}">
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess">
                                                    초과</h4>
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2">
                                                    (${tn.protein}g)</h4>
                                            </c:if>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀지방</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.fat>0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.fat}g</h4>
                                            </c:if>


                                            <c:if test="${tn.fat<=0}">
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess">
                                                    초과</h4>
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2">
                                                    (${tn.fat}g)</h4>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀나트륨</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.sodium>0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.sodium}mg</h4>
                                            </c:if>


                                            <c:if test="${tn.sodium<=0}">
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess">
                                                    초과</h4>
                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2">
                                                    (${tn.sodium}mg)</h4>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ음식 함유량ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --%>
                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ--%>

                        <div class="col-lg-4 menu-wrap">
                            <div class="menu-small">
                                <div class="heading-menu">
                                    <h3 class="text-center mb-5"></h3>
                                </div>
                                <div class="menus d-flex align-items-center">
                                    <div class="text-wrap">
                                        <div class="row align-items-start">
                                            <div class="col-8">
                                                <h4>⠀⠀비타민A</h4>
                                            </div>
                                            <div class="col-4">

                                                <h4 class="text-muted menu-price" id="m5">${fn.vitaminA}µg</h4>

                                            </div>
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="menus d-flex align-items-center">
                                    <div class="text-wrap">
                                        <div class="row align-items-start">
                                            <div class="col-8">
                                                <h4>⠀⠀비타민C</h4>
                                            </div>
                                            <div class="col-4">
                                                <h4 class="text-muted menu-price" id="m6">${fn.vitaminC}mg</h4>
                                            </div>
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="menus d-flex align-items-center">
                                    <div class="text-wrap">
                                        <div class="row align-items-start">
                                            <div class="col-8">
                                                <h4>⠀⠀비타민E</h4>
                                            </div>
                                            <div class="col-4">
                                                <h4 class="text-muted menu-price" id="m7">${fn.vitaminE}mg</h4>
                                            </div>
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="menus d-flex align-items-center">
                                    <div class="text-wrap">
                                        <div class="row align-items-start">
                                            <div class="col-8">
                                                <h4>⠀⠀오메가3</h4>
                                            </div>
                                            <div class="col-4">
                                                <h4 class="text-muted menu-price" id="m8">${fn.omega}mg</h4>
                                            </div>
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ   필요한 성분  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --%>
                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ--%>


                        <div class="col-lg-4 menu-wrap">
                            <div class="heading-menu">
                                <h3 class="text-center mb-5"></h3>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민A</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.vitaminA>0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.vitaminA}µg</h4>
                                            </c:if>

                                            <c:if test="${tn.vitaminA<=0}">
                                                <h4 style="color: blue; width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue" id="excess2">(${tn.vitaminA}µg)</h4>--%>
                                            </c:if>


                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민C</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.vitaminC > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.vitaminC}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.vitaminC <= 0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.vitaminC}mg)</h4>--%>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민E</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.vitaminE > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.vitaminE}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.vitaminE <= 0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.vitaminE}mg)</h4>--%>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀오메가3</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.omega > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.omega}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.omega <= 0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.omega}mg)</h4>--%>
                                            </c:if>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ음식 함유량ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --%>
                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ--%>

                        <div class="col-lg-4 menu-wrap">
                            <div class="heading-menu">
                                <h3 class="text-center mb-5"></h3>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀칼슘</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m9">${fn.calcium}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀철분</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m10">${fn.iron}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀마그네슘</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 class="text-muted menu-price" id="m11">${fn.magnesium}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                        <%--  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ   필요한 성분  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ --%>
                        <%--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ--%>
                        <div class="col-lg-4 menu-wrap">
                            <div class="heading-menu">
                                <h3 class="text-center mb-5"></h3>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀칼슘</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.calcium > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.calcium}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.calcium <= 0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.calcium}mg)</h4>--%>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀철분</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.iron>0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.iron}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.iron<=0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.iron}mg)</h4>--%>
                                            </c:if>

                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">

                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀마그네슘</h4>
                                        </div>
                                        <div class="col-4">

                                            <c:if test="${tn.magnesium > 0}">
                                                <h4 style="color: orangered" id="p1">⠀⠀${tn.magnesium}mg</h4>
                                            </c:if>

                                            <c:if test="${tn.magnesium <= 0}">
                                                <h4 style="color: blue;  width: 40px;  font-size: 15px; margin-top: 1px;"
                                                    id="excess2" id="excess">충족</h4>
                                                <%--                                                <h4 style="color: blue; font-size: 14px; margin-top: 1px;" id="excess2" id="excess2">(${tn.magnesium}mg)</h4>--%>
                                            </c:if>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- External JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="vendor/bootstrap/popper.min.js"></script>
<script src="vendor/bootstrap/bootstrap.min.js"></script>
<script src="vendor/select2/select2.min.js "></script>
<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
<script src="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js"></script>
<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Main JS -->
<script src="js/app.min.js "></script>
</body>
</html>
