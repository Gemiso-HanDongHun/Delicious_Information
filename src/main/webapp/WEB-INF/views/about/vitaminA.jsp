<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

<%@include file="./include/header_css.jsp" %>

    <link rel="stylesheet" href="/about/css/about.css">

    <style>
        div.boxed-page section.top-area div.img {
            width: 40%;
            height: 100%;
            min-width: 120px;
            float: left;
            display: block;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
            background-image: url("/images/vitaminA.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
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
            <h1>비타민A</h1>
            <p>비타민A는 지용성 비타민으로서, 생물의 성장과 발달, 생식, 상피세포의 분화, 세포 분열, 유전자 조절 및 면역 반응 등에
                다양하게 활용되는 레티노이드 화합물의 집합이다. 레티노이드는 '망막'을 의미하는 '레티나'에서 유래한 이름인데,
                전통적으로 비타민A의 섭취가 눈에 도움을 준다는 효능에 따른 것이다.
                실제로 비타민A는 안구의 시야 인식 기작에 관여하며, 결핍 시 안구건조증과 야맹증, 실명의 원인이 된다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 안구 건강에 도움</h3>
                    <p>비타민A는 눈에 들어오는 빛을 뇌로 보낼 수 있는 전기신호로 변환하는데 사용되기에
                        비타민A는 눈 건강에 필수적이다.</p></li>
                <li>
                    <h3>2. 특정 암 예방에 도움</h3>
                    <p>림프종, 자궁 경부암, 폐암 및 방광암 등을 비롯한 특정 유형의 앙 위험을 감소시킬 수 있는 것으로 나타난다.</p></li>
                <li>
                    <h3>3. 면역력 증진</h3>
                    <p>혈류에서 박테리아 및 기타 병원체를 제거하는데 도움이 되는 백혈구의 생성을 도와
                        여러 면역체계 기능에 관여하고 있어 강화 비타민으로도 알려져 있다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
