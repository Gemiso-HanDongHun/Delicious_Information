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
            background-image: url("/images/na.jpg");
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
            <h1>나트륨</h1>
            <p>우리가 음식을 통해 매일 섭취하는 소금인 ‘염화나트륨(NaCl)’의 구성 성분이다.
                소금은 나트륨(Na)과 염소(Cl)가 4:6의 비율로 구성되어 있어
                소금 1g을 섭취하면 나트륨 약 400mg을 섭취하게 된다. 소금의 주성분인 나트륨(Na)은 무기질 중의 하나로
                우리 몸에 꼭 필요한 영양소이며, 몸의 수분량을 조절하는 중요한 영양소로서 체내에서 다양한 역할을 수행합니다.
            </p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 삼투압 조절</h3>
                    <p> 칼륨과 함께 이루어 지는데 세포 안의 칼륨이, 외부의 나트륨이 존재하면서 서로의 수분 군형을
                        유지함으로써 세포 안팎의 수분량과 삼투압을 조절한다.</p></li>
                <li>
                    <h3>2. 신경 조직 기능 유지</h3>
                    <p>우리의 몸 속에서 정보전달은 신경 세포에서 전기 신호로 신경 조직에 전해지는데
                        전기 신호는 세포 안팎의 나트륨 이온과 칼륨 이온이 바뀜으로 발생한다.</p></li>
                <li>
                    <h3>3. 근육 수축</h3>
                    <p>뇌에서 근육을 수축시키라는 명령이 전해지면 근육 세포 밖에 있는 나트륨은
                        세포 내부로 이동하여 근육 세포가 긴장하고 수축된다. </p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
