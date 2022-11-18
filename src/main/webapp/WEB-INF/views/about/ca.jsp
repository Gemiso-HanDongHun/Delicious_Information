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
            background-image: url("/images/ca.jpg");
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
                    <p>성장기는 칼슘이 필요한 시기인데 알칼리식으로 바꾸어 충분한 칼슘이 섭취되면
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
