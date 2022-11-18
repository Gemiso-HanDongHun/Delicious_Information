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
            background-image: url("/images/fat.jpg");
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
            <h1>지방</h1>
            <p>지방은 탄수화물, 단백질과 함께 세 가지 주영양소 중 하나이며 주로 탄소 원자와 수소 원자로 구성되어 있어서 소수성이며,
                유기 용매에 잘 녹고, 물에는 잘 녹지 않는다. 또한 다양한 생물에서 중요한 에너지원이며,
                구조적인 기능과 대사적인 기능에 모두 관여한다. 에너지 밀도가 가장 높기 때문에 에너지 저장의 가장 효율적인 형태이다.
                지방은 신체의 에너지원과 신체가 즉시 필요로 하는 것 이상의 에너지를 저장하는 역할을 한다. </p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 에너지 공급</h3>
                    <p>지방은 중요한 식이 영양소인 필수 지방산의 공급원이다. 또한 중요한 에너지원이다. </p></li>
                <li>
                    <h3>2. 신체 기관 보호</h3>
                    <p>건강한 피부와 털을 유지하고, 외부 충격으로부터 신체 기관을 보호하며, 체온을 유지하고, 건강한 세포 기능을
                        증진시키는 데 중요한 역할을 한다.</p></li>
                <li>
                    <h3>3. 완충제 역활</h3>
                    <p>특정 물질이 혈류에서 안전하지 않은 수준에 도달하면,
                        신체는 새로운 지방 조직에 물질을 저장해 문제가 되는 물질을 효과적으로 희석할 수 있다. </p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
