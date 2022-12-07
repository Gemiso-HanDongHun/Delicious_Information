<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
  <%@include file="../food/include/header_css.jsp" %>
  <style>

    .boxed-page {
      min-height: 970px;
    }

    div.flex-column li a.dropdown-item{ /*drop a태그 height 크기*/
      padding-top: 0;
    }

    #nav-li #navbarDropdown {
      width: 100px;
      padding-top: 60px;
      margin-top: 45px;
      position: absolute;
    }

    #navbar-header .dropdown .dropdown-menu {
      top: 80%;
      display: none;
    }

    #navbar-header .dropdown{
      top:65%;
      height: 1px;
    }

    #navbar-header .dropdown a#navibarDropdown{
      padding-top: 0px;
      top:-34px;
      position: relative;
    }

    #navbar-header .dropdown:hover {
      cursor: pointer;
    }

  </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">
<div class="boxed-page">
  <nav id="navbar-header" class="navbar navbar-expand-lg">
    <div class="container">

      <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
        <ul id="ulwidth" class="navbar-nav d-flex justify-content-between ">
          <div class="d-flex flex-lg-row flex-column justify-content-around widthpx">
            <li class="nav-item active2">
              <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item">
              <a class="nav-link" id="about" href="/food-about">About</a>
            </li>

          </div>
          <div class="flex-column titlewidth justify-content-center">
            <p id="title">𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
          </div>

          <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop" >
            <li class="nav-item dropdown" id="nav-li">
              <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                게시판
              </a>
              <div class="dropdown-menu"  aria-labelledby="navbarDropdown">
                <a class="dropdown-item"
                   onclick="location.href='/board/freeBoard'">자유게시판</a>
                <a class="dropdown-item"
                   onclick="location.href='/board/infoBoard'">정보게시판</a>
                <a class="dropdown-item"
                   onclick="location.href='/board/suggestionBoard'">건의/문의게시판</a>
              </div>

            </li>
            <c:if test="${empty loginUser}">
              <li class="nav-item sign">
                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
              </li>
            </c:if>


            <c:if test="${!empty loginUser}">
              <li class="nav-item sign">
                <a class="nav-link" id="loginAccount" onclick="location.href='/member/info/${loginUser.account}'">${loginUser.name}님</a>
              </li>
              <li class="nav-item sign">
                <a class="nav-link" id="sign-out" href="/member/sign-out">로그아웃</a>
              </li>
            </c:if>
          </div>
        </ul>
      </div>
    </div>
  </nav>
</div>





</body>
</html>
