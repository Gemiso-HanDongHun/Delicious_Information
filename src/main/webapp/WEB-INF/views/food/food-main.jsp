<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        div.boxed-page {
            height: 975px;
        }

        div.container {
            margin-top: 65px;

        }

        div.anima h1{
            /*background-color: pink;*/
            position: relative;
            animation: uprise 3s;
        }


        @keyframes uprise {

            from {
                opacity: 0;
                top: 60%;
            }

            to {
                opacity: 1;
                top: 50%;
            }
        }

        div a.btn-lg{
            margin-top: 20px;
        }

        div.flex-column li a{
            margin: 20px;
            margin-left: 10px;
            font-size: 18px;
        }

        div.mb-2 {
            padding: 10px;
        }

    </style>


</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">
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
<div id="canvas-overlay">

</div>

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand navbar-brand-center d-flex align-items-center p-0 only-mobile" href="">
                <img src="" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="lnr lnr-menu"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                    </div>
                </ul>

                <a class="navbar-brand navbar-brand-center d-flex align-items-center only-desktop" href="#">
                    <img src="" alt="">
                </a>
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/food/menu2.jsp"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="team.html"></a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link" href="reservation.html"></a>
                        </li>
                    </div>
                </ul>
            </div>
        </div>

    </nav>
    <div class="hero">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-6 hero-left">

                    <div class="anima">
                        <h1 class="display-4 mb-5">𝓓𝓮𝓵𝓲𝓬𝓲𝓸𝓾𝓼<br>⠀𝓝𝓾𝓽𝓻𝓲𝓽𝓲𝓸𝓷<br>𝓘𝓷𝓯𝓸𝓻𝓶𝓪𝓽𝓲𝓸𝓷</h1>
                    </div>
                    <div class="mb-2">
                        <a class="btn btn-primary btn-shadow btn-lg" href="/food/list" role="button">음식 영양성분 검색</a>
                        <!--                        <a class="btn btn-icon btn-lg" href="https://player.vimeo.com/video/33110953"-->
                        <!--                           data-featherlight="iframe" data-featherlight-iframe-allowfullscreen="true">-->
                        <!--                            <span class="lnr lnr-film-play"></span>-->
                        <!--                            Play Video-->
                        <!--                        </a>-->
                        <a class="btn btn-primary btn-shadow btn-lg"
                           href="/food-about" role="button" style="color: #ffffff">About</a>
                    </div>

                    <ul class="hero-info list-unstyled d-flex text-center mb-0">
                        <li class="border-right">
                            <span class="lnr lnr-rocket"></span>
                            <h5>
                                Fast Information
                            </h5>
                        </li>
                        <li class="border-right">
                            <span class="lnr lnr-leaf"></span>
                            <h5>
                                Flavorful
                            </h5>
                        </li>
                        <li class="">
                            <span class="lnr lnr-bubble"></span>
                            <h5>
                                Feedback
                            </h5>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6 hero-right">
                    <div class="owl-carousel owl-theme hero-carousel">
                        <div class="item">
                            <img class="img-fluid" src="/resto/img/hero-1.jpg">
                        </div>
                        <div class="item">
                            <img class="img-fluid" src="/resto/img/hero-2.jpg">
                        </div>
                        <div class="item">
                            <img class="img-fluid" src="/resto/img/hero-3.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
