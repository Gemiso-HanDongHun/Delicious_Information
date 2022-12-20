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
            background-image: url("/images/vitaminE.jpg");
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
            <h1>비타민E</h1>
            <p>‘비타민E’란 8가지 지용성 분자로 이루어진 구성체를 일컫는 용어이다. 비타민E는 항산화제 역할 뿐 아니라
                활성 산소로 인해 발생하는 산화 스트레스로부터 세포, 조직, 장기를 보호합니다.
                이에 따라 피부와 혈관 등 각종 세포의 산화를 억제하여 건강 유지에 중요한 역할을 한다.
                타민 E는 생체 내에서 생성되지 않고 음식물로부터 흡수할 수 있는데 주로 지방을 포함하는 음식에 존재하며,
                채소 유래 식용유에 많이 포함되어 있다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 면역 건강</h3>
                    <p>비타민 E는 미성숙한 면역세포인 T-cell을 성숙한 세포로 분화시키는 역할로 면역 기능에 도움을 준다. </p></li>
                <li>
                    <h3>2. 뇌 건강</h3>
                    <p>비타민 E는 뇌의 신경전달물질인 카테콜아민 수치를 높이고, 산화적 손상을 예방하는 작용으로 뇌 건강에
                        도움을 줄 수 있다. </p></li>
                <li>
                    <h3>3. 심장 건강</h3>
                    <p>비타민 E는 나쁜 콜레스테롤인 LDL 콜레스테롤의 산화를 막고, 동맥 내에 침전물이 만들어지는 것을
                        지연시켜 심장 건강에 도움을 줍니다. </p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
