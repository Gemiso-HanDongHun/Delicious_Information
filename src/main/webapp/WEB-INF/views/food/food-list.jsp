<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <%@include file="./include/header_css.jsp" %>

    <style>

        div.boxed-page {
            min-height: 960px;
        }

        /* 외부 폰트 사용 */
        @font-face {
            font-family: 'BMDOHYEON';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        /* List CSS */
        /* 테이블 전체 */
        .test {
            width: 30%;
            border: 2px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 30px;
            background: #f4ede5;
            line-height: 180%;
        }

        /* 내부 tr 배경 */
        table.test tr {
            background: #ffffff;
        }

        /* th 중앙 정렬 및 외부 폰트 */
        div.boxed-page table th {
            text-align: center;
            font-family: 'BMDOHYEON'; /* th 폰트*/
        }

        /* td 중앙 정렬 */
        div.boxed-page table td {
            text-align: center;
        }

        /* 전체 리스트에서 음식명 마우스 오버시 마우스 포인터*/
        div.boxed-page table td:nth-child(2):hover {
            cursor: pointer;
        }

        /* 서치 div 영역 */
        div.div_search {
            width: 20%;
            margin: 70px auto 50px;
            display: flex;
            border-radius: 1em;
            font-size: 0.8vw;
            border: 2px solid #000000;
            line-height: 180%;
            padding-left: 10px;
        }

        div.div_search form {

            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }


        /* 서치바 영역 */
        div.div_search input[type=text] {
            width: 100%;
            height: 45px;
            border: 0px;
        }

        div.div_search input[type=text]:focus {
            outline: none;
        }

        div.div_search a {
            padding: 8px 8px 2px;
        }

        /* 서치 아이콘 */
        span.lnr-magnifier {
            font-size: 25px;
        }

        /* 목록 전체 영역 */
        div.bottom_section {
            padding-bottom: 1px;
            margin-top: 20px;
            color: black;
        }

        /* a태그 폰트 설정 */
        div.bottom_section ul li a {
            color: black;
        }

        /* 목록 마우스 오버시 (현재 마우스 위치를 알기 위해서) */
        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: lightgray;
            color: #ffff;
            font-weight: 700;
        }

        /* a태그 포커스 삭제*/
        div.bottom_section nav.bottom_nav ul li a.page-link:focus {
            outline: 0;
            box-shadow: none;
        }

        div.flex-column li {
            padding-top: 35px;
        }

        div.flex-column li a {
            position: relative;
            margin-right: 140px;
            padding-top: 45px;
        }

        li.nav-item #about {
            position: relative;
            margin-right: 400px;
            padding-top: 45px;
        }


        div.flex-column li p {
            position: relative;
            text-align: center;
            right: 140px;
            font-size: 35px;
            /*background-color: rebeccapurple;*/

        }

        .page-item.active .page-link {
            z-index: 1;
            color: #fff;
            background-color: lightgray;
            border-color: lightgray;
        }

        .boxed-page aside.mine {
            position: fixed;
            top: 20%;
            left: 70%;
            z-index: 10;
            background: #f4ede5;
        }

        .boxed-page aside.mine div.my-food {

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

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">About</a>
                        </li>

                        <li>
                            <p>𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
                        </li>


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
            <a id="side-search-open" class="nav-link" href="#">
                <span class="lnr lnr-magnifier"></span>
            </a>
        </form>

    </div>


    <table class="test">
        <tr>
            <th style="width:25%">No</th>
            <th style="width:40%">음식명</th>
            <th style="width:25%">칼로리</th>
            <th style="width:10%">선택</th>

        </tr>

        <c:forEach var="f" items="${fList}">
            <tr>
                <td>${f.foodNo}번</td>
                <td onclick="location.href='/food/nutrient/${f.foodNo}'">${f.name}</td>
                <td>${f.kcal}(kcal)</td>
                    <%-- <c:if test="${f.check}">
                         <td><input type="checkbox" class="select" value="${f.foodNo}" checked></td>
                     </c:if>--%>
                <td><input type="checkbox" class="select" id="${f.foodNo}" value="${f.foodNo}"></td>
            </tr>
        </c:forEach>
    </table>

    <div class="bottom_section d-flex justify-content-center">
        <nav class="bottom_nav">
            <ul class="pagination">
                <c:if test="${pm.prev}">
                    <li class="page-item">
                        <a class="page-link"
                           href="/food/list?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                    <li class="paginate_button page-item " data-page-num="${n}">
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


    <aside class="mine">
        <div>
            <div>
                <div>
                <p></p>만두</p></div>
                <p class="MuiTypography-root MuiTypography-body1 css-w1kjmb">만두, 1 bag</p>
                <div class="MuiBox-root css-2imjyh"><p class="MuiTypography-root MuiTypography-body1 css-w1kjmb">칼로리 :
                    615</p><span class="MuiBox-root css-qbrse1">•</span>
                    <p class="MuiTypography-root MuiTypography-body1 css-w1kjmb">탄수화물: 43g</p><span
                            class="MuiBox-root css-qbrse1">•</span>
                    <p class="MuiTypography-root MuiTypography-body1 css-w1kjmb">지방 : 37g</p><span
                            class="MuiBox-root css-qbrse1">•</span>
                    <p class="MuiTypography-root MuiTypography-body1 css-w1kjmb">단백질 : 27g</p></div>
            </div>
            <div class="MuiBox-root css-1wm4age">
                <div class="MuiBox-root css-rmz4vk">
                    <div class="MuiBox-root css-vldkxt">
                        <canvas role="img" height="56" width="56"
                                aria-label="다음 데이터가 포함된 주영양소의 세부 항목 차트: 탄수화물: 43g, 지방 : 37g, 단백질 : 27g"
                                style="display: block; box-sizing: border-box; height: 56px; width: 56px;"></canvas>
                    </div>
                    <div class="MuiBox-root css-1ejrq7o"><h3 class="MuiTypography-root MuiTypography-h3 css-w57zs0">
                        615</h3></div>
                </div>
            </div>
        </div>
        내가 선택한 음식
        <div class="my-food">
        </div>
        총칼로리 : <span id="totalKcal"></span>
    </aside>
    <%--    <%@include file="./include/footer.jsp"%>--%>
</div>
<%--<%@include file="./include/footer_js.jsp" %>--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    const $searchButton = document.querySelector("#side-search-open");
    const $inputName = document.querySelector("#inputName");
    const $table = document.querySelector("table");

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

    function showFoodData(myList) { //선택한 음식 보여주기
        const $myFood = document.querySelector(".my-food");
        while ($myFood.hasChildNodes()) {
            $myFood.removeChild($myFood.firstChild);
        }
        for (let i = 0; i < myList.length; i++) {
            let fn = myList[i];
            let $foodData = document.createElement("div");
            $foodData.setAttribute("id", fn.food.foodNo);
            $foodData.innerHTML = fn.food.name;
            $myFood.append($foodData);
            let $inputBox = document.getElementById(fn.food.foodNo);
            $inputBox.setAttribute("checked", "checked");
        }


    }


    $searchButton.onclick = e => {
        location.href = "/food/list?keyword=" + $inputName.value;
    };
    $table.onchange = e => {
        if (!e.target.matches(".select")) { //
            return;
        }
        if (e.target.checked) { //check를 하는 거면
            fetch('/api/foods/' + e.target.value)
                .then(res => res.json())
                .then(myList => {
                    showFoodData(myList);
                });
        } else {
            fetch('/api/foods/' + e.target.value, {method: 'delete'})
                .then(res => res.json())
                .then(myList => {
                    showFoodData(myList);
                });
        }
    }
    //내가 지금 보고 있는 페이지 표시


    $(function () {
        appendPageActive();
        fetch('/api/foods/')
            .then(res => res.json())
            .then(myList => {
                showFoodData(myList);
            });
    });

</script>


</body>
</html>
