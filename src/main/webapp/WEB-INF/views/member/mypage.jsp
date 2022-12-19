<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="../food/include/header_css.jsp" %>

    <!-- jquery -->
    <script src="/js/jquery-3.3.1.min.js"></script>

    <!-- include summernote css/js -->

    <style>

        #navbar-header .navbar-nav .dropdown-menu {
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
            font-weight: 800;
        }

        body {
            font-family: 'MaplestoryOTFBold';
            background: #ffffff;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/ 100% 100%;
            background-repeat: no-repeat;
            margin: 0 0 30px 0;
        }

        .boxed-page-bottom {
            background: #ffffff;
        }

        section#middle {
            width: 37%;
        }

        section.wrapcontent {
            padding: 20px 20px 10px;
            border-radius: 1.5em;
            margin: 100px auto 0px;
            background: whitesmoke;
        }

        div.title {
            background: whitesmoke;
            padding-left: 0px;
        }

        #writeForm {
            padding: 0px;
        }

        h1 {
            font-weight: 600;
            font-size: 24px;
        }

        div.liParent li {
            text-align: center;
        }

        input.form-control:disabled {
            background: #FFFFFF;
        }

        textarea.form-control:disabled {
            background: #FFFFFF;
        }

        #navbar-header .dropdown .dropdown-menu {
            top: 80%;
            display: none;
        }

        #navbar-header .dropdown {
            top: 65%;
            height: 1px;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        #navbar-header .dropdown a#navibarDropdown {
            padding-top: 0px;
            top: -38px;
            position: relative;
            /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .dropdown a#navibarDropdown2 {
            padding-top: 0px;
            top: -38px;
            position: relative;
            /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        div.col-12 {
            text-align: center;
        }

        div p#p1, p#p2, p#p3, p#p4 {
            font-weight: 800;
            margin-left: 8px;
        }

        p#title {
            font-weight: 16;
        }

        section.wrapcontent {
            left: 14%;
            margin-top: 70px;
            padding: 20px;
            margin: 30px;
            width: 650px;
        }

        section.wrapcontent {
            float: left;
        }

        section#middle {
            width: 450px;
        }

        section#middle2{
            width: 520px;
        }

        section#middle, section#middle2 {
            margin-top: 90px;
            left: 21%;
        }

        table.side-t-main {
            width: 100%;
            border-radius: 1.5em;
            border-collapse: separate;
            line-height: 202%;
        }

        table.side-t-main td, table.side-t-main th {
            display: block;
            width: 100%;
            height: 36px;
            background: #ffffff;
            border-radius: 1.5em;
            padding-left: 20px;
            border: 1px solid whitesmoke;
        }

        table.side-t-main th {
            text-align: center;
        }

        table.side-t-main tr td:hover {
            cursor: pointer;
            background: lightgray;
            color:;
        }



        input.col-12{
            border-radius: 1.5em;
            font-family: 'MaplestoryOTFBold';
            padding: 15px;
        }

        div h1{
            font-family: 'MaplestoryOTFBold';
        }

        #delete {
            border-radius: 1.5em;
            position: absolute;
            right: 2px;
        }

        #delete:hover {
            background: lightgrey;
            cursor: pointer;
        }

        .dropdown-item:hover {
            cursor: pointer;
        }

        .dropdown-item:active {
            background: none;
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
                            <a class="nav-link" id="home" href="/">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>

                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓜𝔂 𝓟𝓪𝓰𝓮</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">

                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                자유게시판
                            </a>

                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"
                                   onclick="location.href='/board/freeBoard'">자유게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/infoBoard'">정보게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/suggestionBoard'">문의게시판</a>
                            </div>

                        </li>
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign active4">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <%--<li class="nav-item sign active5">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/mypage'">${loginUser.name}님</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" href="/member/sign-out">로그아웃</a>
                            </li>--%>

                            <li class="nav-item dropdown" id="nav-li">
                                <a class="nav-link dropdown-toggle" id="navibarDropdown2" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${loginUser.name}님
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <%--                                    <a class="dropdown-item"--%>
                                        <%--                                       href="/member/m/${loginUser.account}">마이 페이지</a>--%>
                                    <a class="dropdown-item"
                                       id="sign-out" href="/member/sign-out">로그아웃</a>
                                </div>

                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>

    <section class="d-flex align-items-center flex-column col-5 wrapcontent" id="middle">
        <div class="title col-12"><h1>내정보</h1></div>
        <br/>
        <form id="writeForm" class="col-12" action="/board/freeboard-write" method="post">

            <div class="form-group">

                <p id="p1">아이디</p>

                <input type="text" id="freeboard-input" class="form-control col-12" name="title" value=" ${loginUser.account}"
                       disabled><br/>

                <p id="p2">등급</p>

                <input type="text" id="infoboard-input" class="form-control col-12" name="writer" value="${loginUser.grade}"
                       disabled><br/>

                <p id="p3">이메일</p>

                <c:if test="${!empty loginUser.email}">
                <input type="text" id="sboard-input" class="form-control col-12" name="writer" value="${loginUser.email}"
                       disabled><br/>
                </c:if>

                <c:if test="${empty loginUser.email}">
                    <input type="text" id="sboard-input" class="form-control col-12" name="writer" value="이메일이 없습니다."
                           disabled><br/>
                </c:if>

                <button type="button" id="delete">회원탈퇴</button>
            </div>
        </form>
    </section>

    <section class="d-flex align-items-center flex-column col-5 wrapcontent" id="middle2">
        <div class="title col-12"><h1>내가 쓴 글</h1></div>
        <br/>

        <form id="writeForm2" class="col-12" action="/board/freeboard-write" method="post">
            <div class="form-group">
                <p id="p4" style="font-size:20px; ">자유게시판</p>

                <div class="side-t"> <%-- 이미지요소 --%>
                    <table class="side-t-main">
                        <c:forEach var="af" items="${AllfbList}" begin="0" end="3">
                            <tr>
                                <input type="hidden" name="freeboardNo" value="${af.freeboardNo}">
                                <td style="width:100%;   " onclick="location.href='/board/freeBoard/detail/${af.freeboardNo}'">${af.shortTitle}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>

            </div>
        </form>

        <form id="writeForm2" class="col-12" action="/board/freeboard-write" method="post">
            <div class="form-group">
                <p id="p4" style="font-size:20px; ">정보게시판</p>

                <div class="side-t"> <%-- 이미지요소 --%>
                    <table class="side-t-main">
                        <c:forEach var="uf" items="${userinfo}" begin="0" end="3">
                            <tr>
                                <input type="hidden" name="info_no" value="${uf.infoNo}">
                                <td style="width:100%;   " onclick="location.href='/board/infoBoard/detail/${uf.infoNo}'">${uf.shortName}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>



            </div>
        </form>

        <form id="writeForm2" class="col-12" action="/board/freeboard-write" method="post">
            <div class="form-group">
                <p id="p4" style="font-size:20px; ">문의게시판</p>

                <div class="side-t"> <%-- 이미지요소 --%>
                    <table class="side-t-main">
                        <c:forEach var="us" items="${usersuggest}" begin="0" end="3">
                            <tr>
                                <input type="hidden" name="board_no" value="${us.boardNo}">
                                <td style="width:100%;   " onclick="location.href='/board/suggestionBoard/detail/${us.boardNo}'">${us.shortTitle}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>



            </div>
        </form>




    </section>

</div>

</div>
</body>

<!-- bootstrap js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" defer></script>
<script>


</script>
<!-- 댓글관련 script -->
<script>

    // 로그인한 회원 계정명
    const currentAccount = '${loginUser.account}';
    const grade = '${loginUser.grade}';
    const $delete = document.getElementById('delete');


    //원본 글 번호
    const bno = '${fb.freeboardNo}';
    console.log('bno:', bno);

    if ($delete !== null) {
        //삭제버튼
        $delete.onclick = e => {
            if (!confirm('정말 삭제하시겠습니까?')) {
                return;
            }
            location.href = '/member/mypage/delete';
        };
    }


</script>

</html>