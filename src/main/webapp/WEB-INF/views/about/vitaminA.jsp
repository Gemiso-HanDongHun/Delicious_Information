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
        background-image: url("/images/vitaminA.jpg");
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
