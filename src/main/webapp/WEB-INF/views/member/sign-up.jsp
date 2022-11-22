<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>
        .boxed-page {
            height: 970px;
        }

        .boxed-page .loginform {
            width: 40%;
            height: 600px;
            position: relative;
            margin: auto;
            top: 120px;
            border: 1px solid  #f4ede5;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
            border-radius: 1.5em;
            box-sizing: border-box;
            background: #f4ede5;
            padding: 20px
        }

        .boxed-page .loginform .login .title {
            width: 50%;
            margin: auto;

        }

        .boxed-page .loginform .login .title h1 {
            text-align: center;
            font-size: 1vw;
            margin-bottom: 30px;
        }

        #name {
            width: 90%;
            height: 40px;
            display: block;
            margin: 0 auto;

        }

        #account {
            width: 90%;
            height: 40px;
            display: block;
            margin:  15px auto;
        }

        #password {
            width: 90%;
            height: 40px;
            display: block;
            margin:  15px auto;
        }



        .boxed-page .loginform .loginbt {
            width: 100%;
        }

        .boxed-page .loginform #login,.boxed-page .loginform #regist {
            width: 90%;
            height: 5vh;
            display: block;
            margin: 0 auto 15px auto;
            border: none;
        }

        .boxed-page .loginform #login:hover, .boxed-page .loginform #regist:hover {
            cursor: pointer;
            background: #bcbcbc;
            font-weight: 700;
            color: #ffffff;
        }

        .boxed-page .loginform p{
            width: 90%;
            display: block;
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout" >

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">
    <%@include file="./include/member_nav.jsp" %>

    <section class="loginform">

        <div class="login">
            <div class="title">
                <h1>회원가입</h1>
            </div>
            <input type="text" id="name" value="" placeholder="이름을 입력해주세요">
            <input type="text" id="account" value="" placeholder="아이디를 입력해주세요">
            <input type="password" id="password" value="" placeholder="비밀번호를 입력해주세요">
            <input type="radio" id="gender" value="남" placeholder="">
            <input type="text" id="phone" value="" placeholder="핸드폰 번호를 입력해주세요">
            <input type="email" id="email" value="" placeholder="이메일을 입력해주세요">

        </div>

        <div class="loginbt">

            <button type="button" id="regist">회원가입</button>
        </div>

        <div class="p">
            <p>------------ or connect with ------------</p>
        </div>

    </section>


</div>
</body>
</html>
