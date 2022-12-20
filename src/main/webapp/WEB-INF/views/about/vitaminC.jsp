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
            background-image: url("/images/vitaminC.jpg");
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
            <h1>비타민C</h1>
            <p>비타민 C 또는 L-아스코르브산은 비타민의 한 종류이다. 거의 모든 음식물에 들어있을 정도로, 가장 쉽게 접할 수 있는
                비타민중 하나인데 한 환원제로서 콜라겐의 합성 효소 활성화등 인체에 있어 필수적인 성분중 하나이다.
                인간과 특정한 다른 동물 종에게 필수적인 영양제이다. 항산화 효과로 인해 산화를 예방하는 음식 첨가물로도 널리 쓰인다.
            </p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 항산화작용</h3>
                    <p>성장시기의 영유아들에게 뼈 건강을 돕고 면역 증강, 콜라겐 형성, 괴혈병 예방, 해독작용,
                        피부미용, 피로회복, 비타민E 성분 활성화를 돕는다. </p></li>
                <li>
                    <h3>2. 성장 발달</h3>
                    <p>조직의 성장 발달에 쓰이며 손상된 조직을 고치는데도 쓰이는 영상소이다.
                        철분과 궁합이 좋아 철분의 체내 흡수율을 높인다.</p></li>
                <li>
                    <h3>3. 활성샨소 제거</h3>
                    <p>나이가 들수록 활성산소를 제거하는 능력이 떨어지는데 비타민C는
                        활성산소를 붙잡아 안정된 물질로 변화시키는 대표적인 성분 중 하나이다.</p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
