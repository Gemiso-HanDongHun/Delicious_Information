<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <%@include file="./include/header_css.jsp" %>

    <%--<link rel="stylesheet" type="text/css" href="./css/list.css">--%>
    <style>
        @font-face {
            font-family: 'BMDOHYEON';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .test {
            width: 30%;
            border: 2px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 30px;
            font-family: 'BMDOHYEON';
            /*box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.15);*/
            background: #f4ede5;
            line-height: 180%;
        }

        table.test th, table.test td {
            border: 1px solid #000000;
            border-collapse: collapse;
        }

        table.test tr:nth-child(odd) {
            background: #ddd;
        }

        table.test tr:nth-child(even) {
            background: #ffffff;
        }


        div.boxed-page table th {
            text-align: center;
        }

        div.boxed-page table td:first-child {
            text-align: center;
        }

        div.boxed-page table td:nth-child(2):hover {
            color: #ffffff;
            background: #cccccc;
            cursor: pointer;
            font-weight: 700;
        }

        div.boxed-page table td:nth-child(3) {
            text-align: right;
        }

        div.div_search {
            width: 20%;
            margin: 70px auto 50px;
            width: 60%;
            overflow: hidden;
        }

        div.div_search input[type=text] {
            width: 30%;
            float: left;
            border-radius: 1em;
            border: 2px solid #000000;
            height: 40px;
            margin-left: 100px;
        }

        div.div_search button[type=button] {
            width: 30%;
            float: right;
            border-radius: 2em;
            height: 40px;
        }

        div.div_search button[type=button]:hover {
            background: #4e555b;
            color: #ffffff;
            cursor: pointer;
        }

        div.bottom_section{
            padding-bottom: 1px;
        }

        div.bottom_section nav.bottom_nav ul {
            width: 70%;
            list-style: none;
            margin: 80px auto;
            overflow: hidden;
            display: flex;
            justify-content: center;
            padding: 0;
        }

        div.bottom_section nav.bottom_nav ul li {
            width: 6%;
            float: left;
        }

        div.bottom_section nav.bottom_nav ul li a.page-link {
            width: 100%;
            text-align: center;
            color: #000000;
            border-collapse: separate;
            box-sizing: border-box;
            border: 1px solid #000000;
            background: #ffffff;
            z-index: 3;
        }

        div.bottom_section nav.bottom_nav ul li a.page-link:focus {
            outline: 0;
            box-shadow: none;
        }

        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: #4e555b;
            color: #ffff;
            font-weight: 700;
        }

        div.flex-column li{
            /*background-color: #005cbf;*/
            padding-top: 35px;
        }

        div.flex-column li a {
            position: relative;
            margin-right: 600px;
            padding-top: 45px;
        }

        div.flex-column li p{
            position: relative;
            text-align: center;
            right: 140px;
            font-size: 35px;
            /*background-color: rebeccapurple;*/

        }


    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="./include/side_nav.jsp" %>

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
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>

                        </li>

                        <li>
                            <p>𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
                        </li>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" href="/resto/about.html">About</a>--%>
                        <%--                        </li>--%>

                        <li class="nav-item dropdown">
                            <%--                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                            <%--                                Special Dishes--%>
                            <%--                            </a>--%>
                            <%--                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                            <%--                                <a class="dropdown-item" href="/resto/special-dishes.html">Beef Steak Sauce</a>--%>
                            <%--                                <a class="dropdown-item" href="/resto/special-dishes.html">Salmon Zucchini</a>--%>
                            <%--                            </div>--%>
                        </li>
                    </div>
                </ul>

                <%--                <a class="navbar-brand navbar-brand-center d-flex align-items-center only-desktop" href="/">--%>
                <%--                    <img src="/resto/img/logo.png" alt="">--%>
                <%--                </a>--%>
                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        <%--                        <li class="nav-item active">--%>
                        <%--                            <a class="nav-link" href="/list">List</a>--%>
                        <%--                        </li>--%>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" href="/resto/team.html">Team</a>--%>
                        <%--                        </li>--%>

                        <%--                        <li class="nav-item dropdown">--%>
                        <%--                            <a class="nav-link" href="/resto/reservation.html">Reservation</a>--%>
                        <%--                        </li>--%>
                    </div>
                    <li class="nav-item">
                        <%--                        <a id="side-search-open" class="nav-link" href="#">--%>
                        <%--                            <span class="lnr lnr-magnifier"></span>--%>
                        <%--                        </a>--%>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="div_search">
        <form id="searchForm">
            <input type="text" placeholder="검색하고 싶은 음식을 적어주세요" name="keyword" id="inputName"
                   value="${s.keyword}">
        </form>
        <button type="button" id="search">검색</button>
    </div>

    <table class="test">
        <tr>
            <th style="width:30%">No</th>
            <th style="width:40%">음식명</th>
            <th style="width:30%">칼로리</th>

        </tr>

        <c:forEach var="f" items="${fList}">
            <tr>
                <td>${f.foodNo}번</td>
                <td onclick="location.href='/food/nutrient/${f.foodNo}'">${f.name}</td>
                <td>${f.kcal}(kcal)</td>

            </tr>
        </c:forEach>
    </table>

    <div class="bottom_section">
        <nav class="bottom_nav">
            <ul class="pagination pagination-lg pagination-custom">
                <c:if test="${pm.prev}">
                    <li class="page-item">
                        <a class="page-link"
                           href="/food/list?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                    <li data-page-num="${n}" class="page-item">
                        <a class="page-link"
                           href="/food/list?pageNum=${n}&amount=${pm.page.amount}&keyword=${s.keyword}">${n}</a>
                    </li>
                </c:forEach>

                <c:if test="${pm.next}">
                    <li class="page-item"><a class="page-link"
                                             href="/food/list?pageNum=${pm.endPage + 1}&amount=${pm.page.amount}&keyword=${s.keyword}">next</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>


    <%--    <%@include file="./include/footer.jsp"%>--%>
</div>
<%@include file="./include/footer_js.jsp" %>

<script>
    const $searchButton = document.querySelector("#search");
    const $input = document.querySelector("#inputName");
    $searchButton.onclick = function () {
        $form = document.querySelector("form");
        $form.action = "/food/list";
        $form.submit();
    };

    function appendPageActive() {

        // 현재 내가 보고 있는 페이지 넘버
        const curPageNum = '${pm.page.pageNum}';
        // console.log("현재페이지: ", curPageNum);

        // 페이지 li태그들을 전부 확인해서
        // 현재 위치한 페이지 넘버와 텍스트컨텐츠가 일치하는
        // li를 찾아서 class active 부여
        const $ul = document.querySelector('.pagination');

        for (let $li of [...$ul.children]) {
            if (curPageNum === $li.dataset.pageNum) {
                $li.classList.add('active');
                break;
            }
        }

    }


    (function () {
        appendPageActive();
    })();

</script>


</body>
</html>
