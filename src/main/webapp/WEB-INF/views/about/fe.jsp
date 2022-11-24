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
            background-image: url("/images/fe.jpg");
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
