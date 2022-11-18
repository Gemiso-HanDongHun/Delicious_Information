<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 메뉴 영양분 정보 --%>

<!DOCTYPE html>

<!--
Resto by GetTemplates.co
URL: https://gettemplates.co
-->

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Resto - Restaurant Bootstrap 4 Template by GetTemplates.co</title>
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

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

    <style>

        div.boxed-page {
            /*background-color: pink;*/
            height: 1350px;
        }

        div.flex-column li {
            margin: 35px;
            padding-top: 25px;
        }

        #nene {
            margin-left: 280px;
            margin-bottom: 4px;
        }

        table {
            background-color: #f4ede5;
            width: 355px;
            border: 1px solid #444444;
            box-sizing: border-box;
            margin: auto;
            border-radius: 1em;
            padding-top: 20px;
            margin-left: 800px;
            position: absolute;
            height: 400px;
            z-index: 1200;
        }

        #lili td {
            background-color: floralwhite;
            padding: 6px;
        }

        #li th {
            padding: 9px;
        }

        th, td {
            border: 1px solid #ffffff;
            padding: 3px;
            margin-top: 80px;
            box-sizing: border-box;
            border-collapse: collapse;
        }

        div.boxed-page table th {
            text-align: center;
        }

        div.boxed-page table td:first-child {
            text-align: center;
        }

        div.boxed-page table td:nth-child(2):hover {
            color: #ffffff;
            background: #cccccc;
            cursor: pointer;
        }

        div.boxed-page table td:nth-child(3) {
            text-align: right;
        }

        /* 검색한 음식 영양성분 조회 */

        div.nt_row {
            position: relative;
            height: 850px;
            width: 920px;

        }

        div.nt_row #nt_row1 {
            padding-top: 20px;
            margin-top: 15px;
        }

        div.col-8 h4 {
            padding-top: 4px;
        }

        div.col-lg-4 {
            border: 1px solid lightgray;
            border-radius: 2em;
            padding: 3px;
            margin: 5px;
            width: 300px;
        }

        div.col-4 h4.menu-price {
            margin-left: 33px;
            padding-top: 4px;
        }

        div.col-4 h4#excess {
            padding-top: 5px;
            position: absolute;
        }

        div.col-4 h4#excess2 {
            margin-left: 34px;
            padding-top: 5px;
        }


        div.col-md-12 h2 {
            position: absolute;
            text-align: center;
            padding-bottom: 50px;
            margin-top: 30px;
        }

        div.menu-wrap {
            float: left;
            margin: 20px;
        }

        div p1 {
            position: relative;
            margin-left: 40px;
            margin-top: 10px;
            padding-top: 30px;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        div p4 {
            position: absolute;
            margin-left: 125px;
            top: 336px;
            color: dodgerblue;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            font-size: 18px;
            font-weight: 500;

        }


        div p5 {
            position: absolute;
            margin-left: 453px;
            top: 338px;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        div.mb-5 h2 {
            position: relative;
            text-align: center;
            margin: 0 auto;
            padding-bottom: 50px;
        }

        div nav.navbar-expand-lg {
            position: relative;
            padding-top: 30px;
        }

        #lili td:hover {
            color: orangered;
            cursor: pointer;
        }

        div.text-wrap {
            left: 20px;
        }

        .boxed-page aside.aside {
            position: absolute;
            top: 25%;
            right: 82%;
            z-index: 10;
            padding: 10px;
        }

        .boxed-page aside.aside .side-bar-list {
            min-width: 200px;
            background: #FFFFFF;
            border-radius: 1.5rem;
            border: solid 10px #f4ede5;
            padding: 10px;
            margin-left: 70px;
            /*margin-top: 30px;*/
        }

        .boxed-page aside.aside .side-bar-list .myList {
            text-align: center;
        }

        a.dropdown-toggle {
            /*background-color: pink;*/
            position: relative;
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
                            <a class="nav-link" href="/food-main">Home<span
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
                                성별 : 남자
                            </a>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <%--                                <a class="dropdown-item" href="#" onclick="location.href='/food/nutrient/${fn.food.foodNo}'">남자</a>--%>
                                <a class="dropdown-item" href="#"
                                   onclick="location.href='/food/nutrient2/${fn.food.foodNo}'">여자</a>
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
            </div>
        </div>
    </nav>

    <!-- Menu Section -->


    <section id="gtco-menu" class="section-padding">

        <aside class="aside">
            <div class="side-bar-list">
                <div class="myList">내가 선택한 음식목록</div>
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
                        <p>{props.name}<br/>
                            // 칼로리 : {props.kcal}kcal
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

        </script>

        <div class="container">
            <div class="section-content">
                <div class="row mb-5">
                    <h2>
                        ${fn.food.name} 영양 정보(100g)
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

                        <c:forEach var="f" begin="0" end="17" items="${tn}">
                            <tr id="lili">

                                <td onclick="location.href='/food/nutrient/${f.food.foodNo}'">${f.food.name}(${f.food.kcal}kcal)</td>

                            </tr>
                        </c:forEach>

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
                                            <h4 class="text-muted menu-price">${fn.carbohydrate}g</h4>
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
                                                style="color: lightcoral">${fn.protein}g</h4>
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
                                            <h4 class="text-muted menu-price">${fn.fat}g</h4>
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
                                            <h4 class="text-muted menu-price">${fn.sodium}mg</h4>
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

                                            <c:if test="${carbo.carbohydrate > 0}">
                                                <h4 style="color: orangered">⠀⠀${carbo.carbohydrate}g</h4>
                                            </c:if>

                                            <c:if test="${carbo.carbohydrate < 0}">
                                                <h4 style="color: blue" id="excess">초과</h4>
                                                <h4 style="color: blue" id="excess2">(${carbo.carbohydrate}g)</h4>
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

                                            <c:if test="${pro.protein > 0}">
                                                <h4 style="color: orangered">⠀⠀${pro.protein}g</h4>
                                            </c:if>

                                            <c:if test="${pro.protein < 0}">
                                                <h4 style="color: blue" id="excess">초과</h4>
                                                <h4 style="color: blue" id="excess2">(${pro.protein}g)</h4>
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

                                            <c:if test="${fat.fat>0}">
                                                <h4 style="color: orangered">⠀⠀${fat.fat}g</h4>
                                            </c:if>


                                            <c:if test="${fat.fat<0}">
                                                <h4 style="color: blue" id="excess">초과</h4>
                                                <h4 style="color: blue" id="excess2">(${fat.fat}g)</h4>
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

                                            <c:if test="${sodium.sodium>0}">
                                                <h4 style="color: orangered">⠀⠀${sodium.sodium}mg</h4>
                                            </c:if>


                                            <c:if test="${sodium.sodium<0}">
                                                <h4 style="color: blue" id="excess">초과</h4>
                                                <h4 style="color: blue" id="excess2">(${sodium.sodium}mg)</h4>
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

                                                <h4 class="text-muted menu-price">${fn.vitaminA}µg</h4>

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
                                                <h4 class="text-muted menu-price">${fn.vitaminC}mg</h4>
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
                                                <h4 class="text-muted menu-price">${fn.vitaminE}mg</h4>
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
                                                <h4 class="text-muted menu-price">${fn.omega}mg</h4>
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

                                            <c:if test="${vitaminA.vitaminA>0}">
                                                <h4 style="color: orangered">⠀⠀${vitaminA.vitaminA}µg</h4>
                                            </c:if>

                                            <c:if test="${vitaminA.vitaminA<=0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${vitaminA.vitaminA}µg)</h4>
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

                                            <c:if test="${vitaminC.vitaminC > 0}">
                                                <h4 style="color: orangered">⠀⠀${vitaminC.vitaminC}mg</h4>
                                            </c:if>

                                            <c:if test="${vitaminC.vitaminC <= 0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${vitaminC.vitaminC}mg)</h4>
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

                                            <c:if test="${vitaminE.vitaminE > 0}">
                                                <h4 style="color: orangered">⠀⠀${vitaminE.vitaminE}mg</h4>
                                            </c:if>

                                            <c:if test="${vitaminE.vitaminE <= 0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${vitaminE.vitaminE}mg)</h4>
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

                                            <c:if test="${omega.omega > 0}">
                                                <h4 style="color: orangered">⠀⠀${omega.omega}mg</h4>
                                            </c:if>

                                            <c:if test="${omega.omega <= 0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${omega.omega}mg)</h4>
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
                                            <h4 class="text-muted menu-price">${fn.calcium}mg</h4>
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
                                            <h4 class="text-muted menu-price">${fn.iron}mg</h4>
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
                                            <h4 class="text-muted menu-price">${fn.magnesium}mg</h4>
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

                                            <c:if test="${calcium.calcium > 0}">
                                                <h4 style="color: orangered">⠀⠀${calcium.calcium}mg</h4>
                                            </c:if>

                                            <c:if test="${calcium.calcium <= 0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${calcium.calcium}mg)</h4>
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

                                            <c:if test="${iron.iron>0}">
                                                <h4 style="color: orangered">⠀⠀${iron.iron}mg</h4>
                                            </c:if>

                                            <c:if test="${iron.iron<=0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${iron.iron}mg)</h4>
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

                                            <c:if test="${magnesium.magnesium > 0}">
                                                <h4 style="color: orangered">⠀⠀${magnesium.magnesium}mg</h4>
                                            </c:if>

                                            <c:if test="${magnesium.magnesium <= 0}">
                                                <h4 style="color: blue" id="excess">충족</h4>
                                                <h4 style="color: blue" id="excess2">(${magnesium.magnesium}mg)</h4>
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
