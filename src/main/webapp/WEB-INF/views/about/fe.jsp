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
        background-image: url("/images/fe.jpg");
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
            <h1>철분</h1>
            <p>철분은 적혈구 내의 헤모글로빈을 구성하는 중요한 성분인데 철분이 부족해지면 헤모글로빈의 생산과 골수에서의 적혈구 생산이 줄어든다.
                그 결과 폐에서 산소와 결합할 헤모글로빈이 부족해지므로, 각 조직으로 산소가 충분히 공급되지 못한다.
                빈혈은 혈색소 수치나 적혈구 수 혹은 이 두 가지 모두가 정상치보다 떨어져 있는 상태이기 때문에
                빈혈이 있는 소아 환자의 저장 철이 정상치보다 떨어진 경우를 철결핍빈혈이라 합니다. 이는 가장 흔한 빈혈 형태이다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 빈혈의 예방과 개선</h3>
                    <p>철분이 산소를 운반하는 적혈구의 생성을 돕는 조혈작용을 해 빈혈을 예방한다.</p></li>
                <li>
                    <h3>2. 피로회복</h3>
                    <p>철분의 함량이 높은 음식과 보충제를 통해
                        충분한 철분 섭취로 무기력해지는 느낌을 줄여주고, 만성적인 피로감을 해소시는데 이로운 작용을 한다.</p></li>
                <li>
                    <h3>3. 집중력 개선</h3>
                    <p>결핍이 집중력의 저하 뿐만 아니라 두통과 현기증, 신경과민 등의 증상을 발생시킬수도 있는데
                        이러한 증상을 완화시키기 위헤 철분의 섭취는 필수적이다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
