<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../about/include/header_css.jsp" %>
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

        div.flex-column p.maintext {
            margin-left: 105px;
        }

        li a.dropdown-to {
            width: 100px;
            margin-top: 27px;

        }

        .boxed-page {
            height: 970px;
        }

        .boxed-page .loginform {
            width: 25%;
            height: 60%;
            min-width: 200px;
            position: relative;
            margin: auto;
            top: 120px;
            border: 1px solid  #f4ede5;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
            border-radius: 1.5em;
            box-sizing: border-box;
            background: #f4ede5;
            padding: 20px;
            margin-top: 20px;
        }

        .boxed-page .loginform .login .title {
            width: 50%;
            margin: auto;

        }

        .boxed-page .loginform .login .title h1 {
            font-family: 'MaplestoryOTFBold';
            text-align: center;
            font-size: 2.5vh;
            margin-bottom: 30px;
        }

        #memberid {
            width: 90%;
            height: 40px;
            display: block;
            margin: 0 auto;
            border-radius: 1.5em;
            border: 1px solid #f4ede5;
            padding: 15px;
            font-size: 1.8vh;
        }

        #memberps {
            width: 90%;
            height: 40px;
            display: block;
            margin:  15px auto;
            border-radius: 1.5em;
            border: 1px solid #f4ede5;
            padding: 15px;
            font-size: 1.8vh;
        }

        #memberid:focus, #memberps:focus {
            outline: none;
            border: 1px solid #bcbcbc;
            box-sizing: border-box;
        }



        .boxed-page .loginform .loginbt {
            width: 100%;
        }

        .boxed-page .loginform #login, .boxed-page .loginform #regist {
            width: 90%;
            height: 5vh;
            display: block;
            margin: 0 auto 15px auto;
            border: none;
            border-radius: 2em;
            font-size: 2vh;
        }

        .boxed-page .loginform #login:hover, .boxed-page .loginform #regist:hover {
            cursor: pointer;
            background: #bcbcbc;
            font-weight: 700;
            color: #ffffff;
        }

        .boxed-page .loginform .p {
            width: 90%;
            min-width: 100px;
            height: 1.5vh;
            display: block;
            margin: auto;
            text-align: center;
            font-size: 1.5vh;
        }

        .boxed-page .loginform .kakao a img {
            width: 90%;
            height: 6vh;
            min-height: 5vh;
            display: block;
            margin: 20px auto;
        }

        div.loginbt{
            margin-top: 20px;
        }

        div.p{
            margin-top: 30px;
        }

        div.kakao{
            margin-top: 30px;
        }
    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <%--            <a class="navbar-brand navbar-brand-center d-flex align-items-center p-0 only-mobile" href="/">--%>
            <%--                <img src="/resto/img/logo.png" alt="">--%>
            <%--            </a>--%>
            <%--            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--                <span class="lnr lnr-menu"></span>--%>
            <%--            </button>--%>

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <li class="nav-item only-desktop">
                        <%--                        <a class="nav-link" id="side-nav-open" href="#">--%>
                        <%--                            <span class="lnr lnr-menu"></span>--%>
                        <%--                        </a>--%>
                    </li>
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">About</a>
                        </li>

                        <li>
                            <p class="maintext">𝓓𝓮𝓵𝓲𝓬𝓲𝓸𝓾𝓼 𝓘𝓷𝓯𝓸𝓻𝓶𝓪𝓽𝓲𝓸𝓷</p>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="foodlist" href="/food/list">List</a>
                        </li>


                    </div>
                </ul>

                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">

                    </div>
                    <li class="nav-item">

                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <form id="form1">
        <section class="loginform">

            <div class="login">
                <div class="title">
                    <h1>로그인</h1>
                </div>
                <input type="text" id="memberid" name="account"  style="font-size: 16px; padding-left: 15px" placeholder="아이디를 입력해주세요">
                <input type="password" id="memberps" name="password" style="font-size: 16px; padding-left: 15px"  placeholder="비밀번호를 입력해주세요">
            </div>

            <div class="loginbt">
                <button type="button" id="login" value="로그인">로그인</button>
                <button type="button" id="regist" onclick="location.href='/member/sign-up'"><strong>회원가입</strong></button>
            </div>

            <div class="p">
                <p style="text-align: center">---------- or connect with ----------</p>
            </div>

            <div class="kakao">
                <a href="https://kauth.kakao.com/oauth/authorize?client_id=${kakaoAppKey}&redirect_uri=http://delicious-info.shop${kakaoRedirect}&response_type=code&prompt=login">
                    <img src="/images/kakao_login_large_wide.png" alt="카카오 로그인">
                </a>
            </div>
            <ul>
<%--                <c:if test="${loginUser == null}">--%>
<%--                    <li><a href="/member/sign-up">Sign Up</a></li>--%>
<%--                    <li><a href="/member/login">Sign In</a></li>--%>
<%--                </c:if>--%>

                <c:if test="${loginUser != null}">
                    <li><a href="#">My Page</a></li>
                    <li><a href="/member/sign-out">Sign Out</a></li>
                </c:if>
            </ul>
        </section>


    </form>
</div>

<script>

    const $id = document.querySelector("#memberid");
    const $pw = document.querySelector("#memberps");
    const $loginButton = document.querySelector("#login");
    const $form = document.querySelector("#form1");

    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }



    const loginMsg = '${loginMsg}';

    function isValiDate(){
        if($id.value.trim()=="") {
            alert("아이디를 입력해주세요");
            return false;
        }else if($pw.value.trim()==""){
            alert("비밀번호를 입력해주세요");
            return false;
        }
        return true;
    }

    if (loginMsg === 'NO_ACC') {
        alert('존재하지 않는 회원입니다.');
    } else if (loginMsg === 'NO_PW') {
        alert('비밀번호가 틀렸습니다.');
    }


    $loginButton.addEventListener("click", function () {

        if (isValiDate()) {
            $form.action = "/member/sign-in";
            $form.method = "post";
            $form.submit();

        }
    });

    $pw.addEventListener("keydown",function (e){
        if(e.keyCode=='13'){
            if (isValiDate()) {
                $form.action = "/member/sign-in";
                $form.method = "post";
                $form.submit();
            }
        }
    });




</script>

</body>
</html>
