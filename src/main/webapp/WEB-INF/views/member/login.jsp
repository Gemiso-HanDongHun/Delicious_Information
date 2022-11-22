<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>
        .boxed-page {
            height: 90vh;
        }

        .boxed-page .loginform {
            width: 25%;
            height: 50vh;
            position: relative;
            margin: auto;
            top: 120px;
            border: 1px solid  #f4ede5;
            box-shadow: 0 .5rem 1rem rgba(0,0,0,.15) !important;
            border-radius: 1.5em;
            box-sizing: border-box;
            background: #f4ede5;
            padding: 20px;
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

        #memberid {
            width: 90%;
            height: 40px;
            display: block;
            margin: 0 auto;
            border-radius: 1.5em;
            border: 1px solid #f4ede5;
            padding: 15px;
        }

        #memberps {
            width: 90%;
            height: 40px;
            display: block;
            margin:  15px auto;
            border-radius: 1.5em;
            border: 1px solid #f4ede5;
            padding: 15px;
        }

        #memberid:focus, #memberps:focus {
            outline: none;
            border: 1px solid #bcbcbc;
            box-sizing: border-box;
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

        .boxed-page .loginform .kakao a img {
            width: 90%;
            display: block;
            margin: 20px auto;
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
                <h1>Delicious info에 로그인</h1>
            </div>
            <input type="text" id="memberid" value="" placeholder="아이디를 입력해주세요">
            <input type="password" id="memberps" value="" placeholder="비밀번호를 입력해주세요">
        </div>

        <div class="loginbt">
            <button type="submit" id="login" value="로그인">로그인</button>
            <button type="button" id="regist" onclick="location.href='/member/sign-up'">회원가입</button>
        </div>

        <div class="p">
            <p>------------ or connect with ------------</p>
        </div>

        <div class="kakao">
                <a href="https://kauth.kakao.com/oauth/authorize?client_id=${appKey}&redirect_uri=http://localhost:8276${redirectUri}&response_type=code">
                    <img src="/images/kakao_login_large_wide.png" alt="카카오 로그인">
                </a>
        </div>
        <ul>
        <c:if test="${loginUser == null}">
            <li><a href="/member/sign-up">Sign Up</a></li>
            <li><a href="/member/login">Sign In</a></li>
        </c:if>

        <c:if test="${loginUser != null}">
            <li><a href="#">My Page</a></li>
            <li><a href="/member/sign-out">Sign Out</a></li>
        </c:if>
        </ul>
    </section>


    </form>
</div>

<script>

    const loginMsg = '${loginMsg}';
    if (loginMsg === 'NO_ACC') {
        alert('존재하지 않는 회원입니다.');
    } else if (loginMsg === 'NO_PW') {
        alert('비밀번호가 틀렸습니다.');
    }
</script>

</body>
</html>
