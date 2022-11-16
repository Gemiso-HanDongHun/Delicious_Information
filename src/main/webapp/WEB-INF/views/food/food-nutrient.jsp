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
            width: 350px;
            border: 1px solid #444444;
            box-sizing: border-box;
            margin: auto;
            border-radius: 1em;
            padding-top: 10px;
            margin-left: 800px;
            position: absolute;
            height: 400px;
            overflow: hidden;
        }


        th, td {
            /*border: 1px solid #444444;*/
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
            width: 800px;
        }

        div.nt_row #nt_row1 {
            padding-top: 20px;
            margin-top: 15px;

            /*background-color: aqua;*/
        }

        div.col-8 h4 {
            /*background-color: pink;*/
            padding-top: 4px;
        }

        div.col-lg-4 {
            border: 1px solid lightgray;
            border-radius: 2em;
            padding: 3px;
            margin: 5px;
            width: 300px;
        }

        div.menu-small{
            /*background-color: #005cbf;*/
        }

        div.col-4 h4.menu-price {
            margin-left: 33px;
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
            /*top: 300px;*/
            /*left: 333px;*/
        }

        /*div p2 {*/
        /*    !*position: relative;*!*/
        /*    margin-left: 32px;*/
        /*    margin-top: 100px;*/
        /*    color: dodgerblue;*/
        /*    border-radius: 2em;*/
        /*    border: 1px solid #f4ede5;*/
        /*    padding: 5px;*/
        /*    background-color: #f4ede5;*/
        /*    font-size: 18px;*/
        /*    font-weight: 100;*/
        /*    !*top: 345px;*!*/
        /*    opacity: 0;*/
        /*    !*left: 333px;*!*/
        /*}*/

        div p4 {
            position: relative;
            margin-left: 40px;
            margin-top: 100px;
            color: dodgerblue;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            font-size: 18px;
            font-weight: 100;
            /*top: 345px;*/
            /*left: 333px;*/


        }

        div p3 {
            position: relative;
            margin-left: 190px;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            /*top: 345px;*/
            /*left: 618px;*/
        }

        /*div li a{*/
        /*    border-radius: 2em;*/
        /*    border: 1px solid #f4ede5;*/
        /*    padding: 5px;*/
        /*    !*background-color: lightgray;*!*/
        /*    padding: 15px;*/
        /*}*/


        div.mb-5 h2 {
            position: relative;
            text-align: center;
            /*margin-top: 35px;*/
            /*background-color: #0c5460;*/
            margin: 0 auto;
            padding-bottom: 50px;
        }

        div nav.navbar-expand-lg {
            position: relative;
            padding-top: 30px;
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
            <%--            <a class="navbar-brand navbar-brand-center d-flex align-items-center p-0 only-mobile" href="/">--%>
            <%--                <img src="/resto/img/logo.png" alt="">--%>
            <%--            </a>--%>
            <%--            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"--%>
            <%--                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--                <span class="lnr lnr-menu"></span>--%>
            <%--            </button>--%>

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <%--                    <li class="nav-item only-desktop">--%>
                    <%--                        <a class="nav-link" id="side-nav-open" href="#">--%>
                    <%--                            <span class="lnr lnr-menu"></span>--%>
                    <%--                        </a>--%>
                    <%--                    </li>--%>
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
                                <a class="dropdown-item" href="#" onclick="location.href='/food/nutrient2/${fn.food.foodNo}'">여자</a>
                            </div>

                        </li>
                    </div>
                </ul>

                <%--                <a class="navbar-brand navbar-brand-center d-flex align-items-center only-desktop" href="#">--%>
                <%--                    <img src="/resto/img/logo.png" alt="">--%>
                <%--                </a>--%>
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <%--                        <li class="nav-item active">--%>
                        <%--                            <a class="nav-link" href="menu.jsp">음식</a>--%>
                        <%--                        </li>--%>
                        <li class="nav-item">
                            <a class="nav-link" href="team.html" id="nene">영양소 효능</a>
                        </li>

                        <%--                        <li class="nav-item dropdown">--%>
                        <%--                            <a class="nav-link" href="reservation.html">Reservation</a>--%>
                        <%--                        </li>--%>
                    </div>

                    <%--                    <li class="nav-item">--%>
                    <%--                        <a id="side-search-open" class="nav-link" href="#">--%>
                    <%--                            <span class="lnr lnr-magnifier">⠀음식 검색</span>--%>

                    <%--                        </a>--%>
                    <%--                    </li>--%>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Menu Section -->

    <section id="gtco-menu" class="section-padding">
        <div class="container">
            <div class="section-content">
                <div class="row mb-5">
                    <h2>
                        ${fn.food.name} 영양 정보(100g)
                    </h2>

                    <%--                    <div class="col-md-12">--%>

                    <%--                        <div class="heading-section text-center">--%>
                    <%--                            &lt;%&ndash;                            <p>검색한 음식의 영양 정보</p>&ndash;%&gt;--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>


                <div>
                    <p4>⠀${fn.food.kcal}kcal⠀</p4>
                    <p3>부족한 영양분(하루권장량 - 섭취음식)</p3>
                </div>


                <%--<c:forEach var="fn" items="${fnList}">--%>

                <div class="recomend">

                    <table class="reco">
                        <tr>
                            <th>𝑅𝑒𝒸𝑜𝓂𝓂𝑒𝓃𝒹𝒶𝓉𝒾𝑜𝓃</th>
                        </tr>

                        <c:forEach var="f" begin="0" end="20" items="${fl}">
                            <tr>
                                <td>${f.name}(${f.kcal}kcal)</td>
                            </tr>
                        </c:forEach>

                    </table>
                </div>

                <div class="nt_row">
                    <div class="nt_rowinner">

                        <div class="col-lg-4 menu-wrap" id="nt_row1">
                            <%--                            <div class="heading-menu">--%>
                            <%--                                <h3 class="text-center mb-5"></h3>--%>
                            <%--                            </div>--%>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                            <%--                            <div class="heading-menu">--%>
                            <%--                                <h3 class="text-center mb-5"></h3>--%>
                            <%--                            </div>--%>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀탄수화물</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${carbo.carbohydrate}g</h4>
                                        </div>  53
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀단백질</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${pro.protein}g</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀지방</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${fat.fat}g</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀나트륨</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${sodium.sodium}mg</h4>
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
                                    <!--                            <div class="menu-img rounded-circle">-->
                                    <!--                                <img class="img-fluid" src="" alt="">-->
                                    <!--                            </div>-->
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
                                    <!--                            <div class="menu-img rounded-circle">-->
                                    <!--                                <img class="img-fluid" src="" alt="">-->
                                    <!--                            </div>-->
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
                                    <!--                            <div class="menu-img rounded-circle">-->
                                    <!--                                <img class="img-fluid" src="" alt="">-->
                                    <!--                            </div>-->
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
                                    <!--                            <div class="menu-img rounded-circle">-->
                                    <!--                                <img class="img-fluid" src="" alt="">-->
                                    <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민A</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${vitaminA.vitaminA}µg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민C</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${vitaminC.vitaminC}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀비타민E</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${vitaminE.vitaminE}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀오메가3</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${omega.omega}mg</h4>
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
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
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀칼슘</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${calcium.calcium}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀철분</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${iron.iron}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                            <div class="menus d-flex align-items-center">
                                <!--                            <div class="menu-img rounded-circle">-->
                                <!--                                <img class="img-fluid" src="" alt="">-->
                                <!--                            </div>-->
                                <div class="text-wrap">
                                    <div class="row align-items-start">
                                        <div class="col-8">
                                            <h4>⠀⠀마그네슘</h4>
                                        </div>
                                        <div class="col-4">
                                            <h4 style="color: orangered">⠀⠀${magnesium.magnesium}mg</h4>
                                        </div>
                                    </div>
                                    <p></p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <%--    ==============================================================================================================--%>
                <%--    ==============================================================================================================--%>
                <%--    ==============================================================================================================--%>

                <%--     </c:forEach>--%>
            </div>
        </div>
    </section>

    <!-- End of menu Section -->


    <%--    <footer class="mastfoot pb-5 bg-white section-padding pb-0">--%>
    <%--        <div class="inner container">--%>
    <%--            <div class="row">--%>
    <%--                <div class="col-lg-4">--%>
    <%--                    <div class="footer-widget pr-lg-5 pr-0">--%>
    <%--                        <img src="img/logo.png" class="img-fluid footer-logo mb-3" alt="">--%>
    <%--                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et obcaecati quisquam id sit omnis--%>
    <%--                            explicabo voluptate aut placeat, soluta, nisi ea magni facere, itaque incidunt modi? Magni,--%>
    <%--                            et voluptatum dolorem.</p>--%>
    <%--                        <nav class="nav nav-mastfoot justify-content-start">--%>
    <%--                            <a class="nav-link" href="#">--%>
    <%--                                <i class="fab fa-facebook-f"></i>--%>
    <%--                            </a>--%>
    <%--                            <a class="nav-link" href="#">--%>
    <%--                                <i class="fab fa-twitter"></i>--%>
    <%--                            </a>--%>
    <%--                            <a class="nav-link" href="#">--%>
    <%--                                <i class="fab fa-instagram"></i>--%>
    <%--                            </a>--%>
    <%--                        </nav>--%>
    <%--                    </div>--%>
    <%--                </div>--%>


    <%--                <div class="col-lg-4">--%>
    <%--                    <div class="footer-widget px-lg-5 px-0">--%>
    <%--                        <h4>Open Hours</h4>--%>
    <%--                        <ul class="list-unstyled open-hours">--%>
    <%--                            <li class="d-flex justify-content-between"><span>Monday</span><span>9:00 - 24:00</span></li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Tuesday</span><span>9:00 - 24:00</span>--%>
    <%--                            </li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Wednesday</span><span>9:00 - 24:00</span>--%>
    <%--                            </li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Thursday</span><span>9:00 - 24:00</span>--%>
    <%--                            </li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Friday</span><span>9:00 - 02:00</span></li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Saturday</span><span>9:00 - 02:00</span>--%>
    <%--                            </li>--%>
    <%--                            <li class="d-flex justify-content-between"><span>Sunday</span><span> Closed</span></li>--%>
    <%--                        </ul>--%>
    <%--                    </div>--%>

    <%--                </div>--%>

    <%--                <div class="col-lg-4">--%>
    <%--                    <div class="footer-widget pl-lg-5 pl-0">--%>
    <%--                        <h4>Newsletter</h4>--%>
    <%--                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>--%>
    <%--                        <form id="newsletter">--%>
    <%--                            <div class="form-group">--%>
    <%--                                <input type="email" class="form-control" id="emailNewsletter"--%>
    <%--                                       aria-describedby="emailNewsletter" placeholder="Enter email">--%>
    <%--                            </div>--%>
    <%--                            <button type="submit" class="btn btn-primary w-100">Submit</button>--%>
    <%--                        </form>--%>
    <%--                    </div>--%>

    <%--                </div>--%>
    <%--                <div class="col-md-12 d-flex align-items-center">--%>
    <%--                    <p class="mx-auto text-center mb-0">Copyright 2019. All Right Reserved. Design by <a--%>
    <%--                            href="https://gettemplates.co" target="_blank">GetTemplates</a></p>--%>
    <%--                </div>--%>

    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </footer>--%>
</div>

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
