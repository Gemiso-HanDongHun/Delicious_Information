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

    div nav.navbar-expand-lg {
        position: relative;
        padding-top: 30px;
    }

    div.boxed-page {
        padding-bottom: 30px;
    }

    div.flex-column li{
        margin: 35px;
        padding-top: 35px;
    }

    div.flex-column li a {
        position: relative;
        padding-top: 45px;
    }
    .navbar-expand-lg .navbar-nav .flex-column .dropdown {
        padding: 0;
    }
    li.nav-item #about {
        position: relative;
        margin-right: 400px;
        padding-top: 45px;
    }

    div.flex-column li p{
        position: relative;
        text-align: center;
        right: 140px;
        font-size: 35px;
    }

    div.boxed-page section.top-area {
        width: 50%;
        height: 570px;
        padding: 20px;
        margin: 60px auto 30px;
        overflow: hidden;
    }

    div.boxed-page section.top-area div.img {
        width: 50%;
        height: 520px;
        float: left;
        display: block;
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
        background-image: url("/images/carb.jpg");
        background-size: 565px 550px;
        background-repeat: no-repeat;
    }

    div.boxed-page section.top-area div.top-p {
        width: 35%;
        height: 520px;
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
            <h1>탄수화물</h1>
            <p>탄수화물은 우리 식생활에서 가장 많은 양을 차지하는 열량식품으로서 지방, 단백질과 같이 3대 영양소 중의 하나이다.
                지방질 및 단백질과 같이 생물체를 구성하며 우리의 음식물로서 중요한 물질이고
                우리의 주식으로 곡류인 쌀ㆍ밀가루 등도 탄수화물의 주성분이며 이것의 부족은 열량섭취 부족의 주원인이 된다.
                또한 에너지의 공급원과 에너지의 저장으로 중요한 영양소이고 또한 세포 구성 물질이 된다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 단백질 절약 작용</h3>
                    <p>중추신경계의 원활한 작용을 위해서는 탄수화물은 꼭 있어야 하고 지방도 에너지 급원으로 쓰여지긴 하지만 이때에도
                    탄수화물이 필요하다.</p></li>
                <li>
                    <h3>2. 장내 운동성</h3>
                    <p>탄수화물과 지방은 단백질이 에너지원이 되는 것보다 단백질의 고유기능을 행하도록 단백질을
                        절약시켜주는 작용이 있다고 볼 수 있다.</p></li>
                <li>
                    <h3>3. 신체 구성 성분</h3>
                    <p>장내에서 물을 흡수하여 부드러운 덩어리를 만들고, 소화기관 근육의 수축을 자극하여
                        장내에서 음식물이 잘 이동하도록 연동운동을 돕는 역할을 한다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
