<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="./include/header_css.jsp" %>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">



<div class="boxed-page">

    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul id="ulwidth" class="navbar-nav d-flex justify-content-between ">
                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx">
                        <li class="nav-item active2">
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">About</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                            <p id="title">𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx" >
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-up" href="/member/sign-up">회원가입</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <li class="nav-item sign">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/info/${loginUser.account}'">${loginUser.name}님</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" onclick="signOut()">로그아웃</a>
                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>

</body>
</html>
