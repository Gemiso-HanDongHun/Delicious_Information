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
            background-image: url("/images/mg.jpg");
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
            <h1>마그네슘</h1>
            <p>사람의 몸에서는 칼슘, 인과 함께 뼈의 대사에 중요한 역할을 한다.
                칼슘이 근수축에 필요하고, 마그네슘은 근이완에 필요한데 칼슘은 세포외액에 많이 있고 마그네슘은 세포내액에 많다.
                칼슘과 마그네슘이 세포 내액와 외액 사이를 이동하며 정상적인 근육의 수축이완과 심장박동을 가능하게 하기 때문에
                마그네슘은 신경계통의 흥분을 진정시키는데 꼭 필요한 영양소중 하나이다.
                칼슘과 더불어 에너지생성, 영양대사, 신경전도, 뼈와 치아 형성 유지에도 꼭 필요하다.</p>
        </div>
    </section>

    <section class="bottom-area">
        <div class="detail2">
            <h2>효능</h2>
            <ul>
                <li>
                    <h3>1. 에너지 생산과 단백질 대사</h3>
                    <p>탄수화물 대사 과정에서 글루코키나아제의 작용에 마그네슘이 관여하고,
                        다른 에너지 대사에서도 작용해 우리 몸의 에너지를 내는 데 중요한 역할을 한다.</p></li>
                <li>
                    <h3>2. 뼈 건강</h3>
                    <p>뼛속의 칼슘을 만들어내는 칼시토닌의 생성을 위해 마그네슘이 필요하고,
                        칼슘이 혈액에 녹을 수 있게 도와 칼슘의 부작용을 예방해 줄 수 있다.</p></li>
                <li>
                    <h3>3. 근육의 이완과 수축</h3>
                    <p>근육의 이완과 수축에 관여하는 것에서 더 나아가 두통과 편두통, 생리통, 혈관 경련 등에도 도움을 준다. </p></li>
            </ul>
        </div>
    </section>
</div>
</body>
</html>
