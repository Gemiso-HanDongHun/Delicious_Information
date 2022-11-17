<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

<%@include file="./include/header_css.jsp" %>

<style>
    /* 외부 무료 폰트*/
    @font-face {
        font-family: 'LINESeedKR-Bd';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }

    /* 바디 하단 패딩으로 띄우기 */
    div.boxed-page {
        padding-bottom: 30px;
    }

    /* 네비바  전체 */
    div nav.navbar-expand-lg {
        position: relative;
        padding-top: 30px;
    }

    /* 네비바 li */
    div.flex-column li {
        padding-top: 35px;
    }

    /* 네비바 a 태그 */
    div.flex-column li a {
        position: relative;
        margin-right: 140px;
    }

    /* home */
    div.flex-column li.active a.nav-link {
        padding-top: 45px;
    }

    /* 영양소 */
    div.flex-column li.nav-item #navbarDropdown {
        width: 100px;
        padding-top: 45px;
        margin-top: 45px;
    }

    .dropdown-menu {
        top: 80%;
    }

    .dropdown-menu:hover {
        display: none;
    }

    /* 전체 네비바  */
    .navbar-expand-lg .navbar-nav .flex-column .dropdown {
        padding: 0;
    }

    /* about */
    li.nav-item #about {
        position: relative;
        margin-right: 400px;
        padding-top: 45px;
    }

    /* food list */
    div.flex-column li p{
        position: relative;
        text-align: center;
        right: 150px;
        font-size: 35px;
    }

    div.boxed-page section.top-area {
        width: 50%;
        height: 500px;
        padding: 20px;
        margin: 60px auto 30px;
        overflow: hidden;
    }

    div.boxed-page section.top-area div.img {
        width: 40%;
        height: 390px;
        float: left;
        display: block;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
        background-image: url("/images/dha2.jpg");
        background-size: 452px 390px;
        background-repeat: no-repeat;
    }

    div.boxed-page section.top-area div.top-p {
        width: 50%;
        height: 390px;
        float: right;
        font-size: 15px;
        border: 1px solid  #f4ede5;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
        border-radius: 1.5em;
        background:  #f4ede5;
        padding: 20px;
    }

    div.boxed-page section.top-area div.top-p h1 {
        font-family: 'LINESeedKR-Bd';
        margin-bottom: 30px;
        color: #6c6c6c;
    }

    div.boxed-page section.top-area div.top-p p {
        font-size: 1.5em;
        text-indent: 1em;
        line-height: 160%;
        text-align: justify;
        font-family: 'LINESeedKR-Bd';
    }

    div.boxed-page section.bottom-area  {
        width: 50%;
        display: block;
        margin: auto;
        padding: 15px;
        border: 1px solid  #f4ede5;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
        border-radius: 1.5em;
        background:  #f4ede5;
        font-family: 'LINESeedKR-Bd';
    }

    div.boxed-page section.bottom-area div.detail2 h2 {
        margin-bottom: 15px;

        font-size: 40px;
        color: #6c6c6c;
    }

    div.boxed-page section.bottom-area div.detail2 h3 {
        margin-bottom: 5px;
        font-size: 25px;
        font-weight: 600;
    }

    div.boxed-page section.bottom-area div.detail2 ul {
        list-style:none;
        padding-left: 15px;
        margin: 0;
    }

    div.boxed-page section.bottom-area div.detail2 ul li:first-child {
       margin-bottom: 20px;
    }
    div.boxed-page section.bottom-area div.detail2 ul li:nth-child(2) {
        margin-bottom: 20px;
    }

    div.boxed-page section.bottom-area div.detail2 ul li p {
        margin: 0;
        font-size: 18px;
        text-indent: 1em;
    }

</style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout" >

<%@include file="./include/side_nav.jsp" %>

<div class="boxed-page">
    <%@include file="./include/about_nav.jsp" %>

    <section class="top-area">
        <div class="img"></div>
        <div class="top-p">
            <h1>오메가 3</h1>
            <p>오메가3는 지방산의 한 종류로 지방질 공급과 이상지질혈증 치료 목적으로 언급되고 있는 지방산의 한 종류이다.
                이러한 효능으로 체내에 좋지 않은 콜레스테롤과 중성지방을 분해하며, 혈행 개선을 통해서 혈액순환을 돕는다.
                일반적으로 오메가3는 생선과 참기름, 들기름 등에 많이 포함되어 있다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 항염증 효과</h3>
                    <p>항염증 치료제를 복용하고 있는 관절염 환자들이
                        약 복용량을 줄이거나 약을 중단 할 정도로 오메가3 지방산은 나쁜 콜레스테롤과 중성지방을 감소시킨다.</p></li>
                <li>
                    <h3>2. 저콜레스테롤</h3>
                    <p>고밀도 지단백질을 증가시키고, 오메가3 지방산은 식이 포화지방이
                        다중 불포화지방산으로 대체되면서 ‘나쁜’ 콜레스테롤을 낮춘다</p></li>
                <li>
                    <h3>3. 혈압 감소 효과</h3>
                    <p>오메가3 지방산은 질산산화물의 생체이용을 증가시켜 혈관 건강을 향상 시키고
                    혈관의 팽창을 유도하여 혈압의 현저한 저하를 가져오는 것으로 나타났다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
