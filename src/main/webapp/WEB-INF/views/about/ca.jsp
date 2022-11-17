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
        background-image: url("/images/ca.jpg");
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
            <h1>칼슘</h1>
            <p>보통 칼슘이라고 하면 뼈에 좋은 영양소로 많이 알고 있지만 칼슘은 뼈를 좋게 하는 역할 외에도 우리 몸에서 다양한 역할을 한
                우리 몸의 칼슘 중 99%가 뼈와 치아를 형성하고 나머지 1%는 혈액, 체액, 근육 등에 존재한다.
                특히 혈액에 존재하는 칼슘은 심장박동, 혈관의 수축과 이완, 신경자극전달 등 생명현상을 유지하는데 필요하다.
                혈액 중의 칼슘이 부족하면 뼈의 칼슘이 빠져나오기 때문에 건강한 뼈를 위해서는 칼슘의 섭취가 중요하다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 신경안정 보조</h3>
                    <p>성장기에는 칼슘이 필요한 시기인데 알칼리식으로 바꾸어 충분한 칼슘이 섭취되면
                        정서불안 증세나 불안감 초조감이 사라지고 자율신경실조도 없어지게 된다.</p></li>
                <li>
                    <h3>2. 골다공증 예방</h3>
                    <p>뼈는 30대에 가장 충실하게 완성되고 그 후반부터는 감량하기 시작하며 점점 감량되기 때문에
                        꾸준히 칼슘을 뼈에 단단히 저장시켜두고 섭취해야 한다.</p></li>
                <li>
                    <h3>3. 임신과 칼슘</h3>
                    <p>정자주위에는 다른 세포와 마찬가지로 1만 배나 되는 농도 짙은 칼슘이 있는데
                        이로인해 세포는 외부로부터의 신호를 받을 수 있고 활동을 시작할 수 있다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
