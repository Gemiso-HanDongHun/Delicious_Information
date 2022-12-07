<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

<%@include file="./include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

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

        div li {
            font-family: 'MaplestoryOTFBold';
            font-weight: 800;
        }

        div.boxed-page section.top-area div.img {
            width: 40%;
            height: 100%;
            min-width: 120px;
            float: left;
            display: block;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
            background-image: url("/images/carb2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
        }

        div.boxed-page{
            height: 980px;
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
