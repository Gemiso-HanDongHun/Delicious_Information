<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 사이트 설명 및 정보 --%>

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

        .flex-column {
            margin-top: 40px;
            /*font-size: 17px;*/
        }

        div.flex-column li a {
            margin: 50px;
            margin-top: 40px;
        }

        div.flex-column li a#list{
            margin-left: 65px;
        }

        div.img-2 {
            height: 620px;
        }

        div.ml-md-5 {
            /*margin: 20px;*/
            padding-bottom: 20px;
        }

        div.ml-md-5 h2 {
            margin-left: 20px;
        }

        div.ml-md-5 h3 {
            padding-top: 30px;
            margin-left: 10px;
        }

        div.col-4 {
            padding-top: 30px;
        }

        div.ml-md-5 p {
            font-size: 18px;
            margin: 25px;
            padding: 10px;
            color: dimgray;
            border-radius: 2em;
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            text-align: center;
        }

        div.thumb-menu h6 {
            color: dimgray;
        }

        .thumb-menu {
            color: black;
        }

    </style>

</head>
<body data-spy="scroll" data-target="#navbar">

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand navbar-brand-center d-flex align-items-center p-0 only-mobile" href="/">
                <img src="/resto/img/logo.png" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="lnr lnr-menu"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">

                        <li class="nav-item active">
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                </ul>
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                    </div>
                    <li class="nav-item">
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Welcome Section -->
    <section id="gtco-welcome" class="bg-white section-padding">
        <div class="container">
            <div class="section-content">
                <div class="row">
                    <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2"
                         style="background-image: url(/resto/img/salmon-zucchini.jpg);">

                    </div>
                    <div class="col-sm-7 py-5 pl-md-0 pl-4">
                        <div class="heading-section pl-lg-5 ml-md-5">
                        <span class="subheading">

                        </span>
                            <h2>
                                𝒲𝑒𝓁𝒸𝑜𝓂𝑒 𝓉𝑜 𝒟𝑒𝓁𝒾𝒸𝒾𝑜𝓊𝓈 𝒾𝓃𝒻𝑜
                            </h2>

                        </div>
                        <div class="pl-lg-5 ml-md-5">
                            <p>섭취하고자 하는 음식의 영양분을 확인할 수 있습니다</p>
                            <p>다양한 음식의 영양 정보를 제공합니다</p>
                            <p>하루 동안 섭취한 영양분을 비교 분석합니다</p>

                            <h3 class="mt-5">𝓢𝓹𝓮𝓬𝓲𝓪𝓵</h3>
                            <div class="row">
                                <div class="col-4">
                                    <a href="#" class="thumb-menu">
                                        <img class="img-fluid img-cover" src="/resto/img/list.jpg"/>
                                        <h6>리스트에서 음식 검색</h6>
                                    </a>
                                </div>
                                <div class="col-4">
                                    <a href="#" class="thumb-menu">
                                        <img class="img-fluid img-cover" src="/resto/img/information.jpg"/>
                                        <h6>영양분 정보 제공</h6>
                                    </a>
                                </div>
                                <div class="col-4">
                                    <a href="#" class="thumb-menu">
                                        <img class="img-fluid img-cover" src="/resto/img/analysis.jpg"/>
                                        <h6>영양분 권장량 분석</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

</div>
<!-- External JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="/resto/vendor/bootstrap/popper.min.js"></script>
<script src="/resto/vendor/bootstrap/bootstrap.min.js"></script>
<script src="/resto/vendor/select2/select2.min.js "></script>
<script src="/resto/vendor/owlcarousel/owl.carousel.min.js"></script>
<script src="https://cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js"></script>
<script src="/resto/vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Main JS -->
<script src="/resto/js/app.min.js "></script>
</body>
</html>
