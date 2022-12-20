<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

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
            background-image: url("/images/protein.jpg");
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
            <h1>단백질</h1>
            <p>단백질은 생명 유지에 필수적인 영양소로서 효소, 호르몬, 항체 등의 주요 생체 기능을 수행하고 근육 등의 체조직을 구성한다.
                단백질은 살아있는 세포에서 수분 다음으로 풍부하게 존재하므로 식이를 통해 체내에서 필요한 단백질을 규칙적으로 공급해주는 일로
                건강 유지에 필수적이다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 근육량 증가</h3>
                    <p>인간의 신체는 40대부터 점점 근육이 줄어든다고 하는데
                        근육량이 줄어드는 현상을 방지하기 위해서는 단백질을 섭취하고 꾸준히 운동하는 것이 좋다.</p></li>
                <li>
                    <h3>2. 다이어트</h3>
                    <p>신체에 근육이 많아지면 기초대사량이 높아져 식욕을 억제하고 과식하는 것을 막아주는 효과가 있다. </p></li>
                <li>
                    <h3>3. 당 수치 안정화</h3>
                    <p>단백질이 소화가 천천히 되도록 도와주어 식사를 하고 난 후에 혈당 수치가 갑자기 올라가지
                        않게 도와준다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
