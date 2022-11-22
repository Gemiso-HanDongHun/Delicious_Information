<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="./include/header_css.jsp" %>

    <style>

        button#reset{
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            margin-left: 90px;

            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        button#searchk{
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            margin-left: 10px;

            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        button.btn-info:hover{
            color: #f4ede5;
        }


        .img-2 {
            width: 17%;
            height: 600px;
            position: absolute;
            left: 130px;
            margin-top: 11px;

        }


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
            width: 35%;
            border: 2px solid #f4ede5;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 24px;
            background: #f4ede5;
            line-height: 202%;
            z-index: 1000;
        }

        /* 내부 tr 배경 */
        table.test tr {
            background: #ffffff;
        }

        /* th 중앙 정렬 및 외부 폰트 */
        div.boxed-page table th {
            text-align: center;
            /*font-family: 'BMDOHYEON'; !* th 폰트*!*/
            font-weight: 700;
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
            width: 21%;
            margin: 70px auto 50px;
            display: flex;
            border-radius: 1em;
            font-size: 0.8vw;
            border: 2px solid #000000;
            line-height: 180%;
            padding-left: 10px;
            /*background-color: #005cbf;*/
            margin-bottom: 30px;
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
            height: 40px;
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
            margin-top: 25px;
            margin-bottom: 2px;
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
            right: 165px;
            font-size: 35px;
            /*background-color: rebeccapurple;*/

        }

        .page-item.active .page-link {
            z-index: 1;
            color: #fff;
            background-color: lightgray;
            border-color: lightgray;
        }

        .boxed-page aside.aside {
            position: absolute;
            top: 25%;
            left: 70%;
            z-index: 10;
            padding: 10px;


        }


        .boxed-page aside.aside .side-bar-list {
            min-width: 200px;
            background: #FFFFFF;
            border-radius: 1.5rem;
            border: solid 10px #f4ede5;
            padding: 10px;
            margin-left: 70px;
            /*margin-top: 30px;*/

        }

        .boxed-page aside.aside .side-bar-list .myList {
            text-align: center;
        }
        div.sign{
            margin-left:250px;
        }
        div.flex-column li.sign a {
            width:75px;
            position: relative;
            margin-right: 10px;
            padding-top: 45px;
        }
    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="./include/side_nav.jsp" %>

<div class="boxed-page">

    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

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
                        </li>
                    </div>

                    <div class="d-flex flex-lg-row flex-column sign " >
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-in" href="/member/login">Sign-in</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-up" href="/member/sign-up">Sign-up</a>
                            </li>
                        </c:if>

                        <c:if test="${!empty loginUser}">
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" href="/member/sign-out">Sign-out</a>
                            </li>
                        </c:if>
                    </div>




                </ul>

                <%--                <a class="navbar-brand navbar-brand-center d-flex align-items-center only-desktop" href="/">--%>
                <%--                    <img src="/resto/img/logo.png" alt="">--%>
                <%--                </a>--%>
               <%-- <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">
                        </li>
                    </div>
                    <li class="nav-item">
                    </li>
                </ul>--%>
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

    <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2"
         style="background-image: url(/resto/img/steak.jpg);"> <%-- 이미지요소 --%>

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
                <td>${f.foodNo}</td>
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

    <aside class="aside">
        <div class="side-bar-list">
            <div class="myList">내가 선택한 음식(100g) </div>
            <div id="mine">

            </div>
        </div>
        <div class="aside-down d-flex justify-content-center">
            <button type="button" class="btn btn-info" id="reset" >초기화</button>
            <button type="button" class="btn btn-info" id="searchk" >검색</button>
        </div>
    </aside>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

<script type="text/babel">

    function Food(props) {
        return (
            <div className="my-food">
                <p>{props.name}<br/>
                    칼로리 : {props.kcal}kcal
                </p>
            </div>
        );
    }

    function Getbr() {
        return (
            <br/>
        );
    }

    function List(props) {
        var myList = props.myList;
        //tr을 반복한 컨테츠를 구성
        var tag = []; //여기에 tr을 모아 둘것임
        var total = 0;
        for (let i = 0; i < myList.length; i++) {
            let fn = myList[i];
            if (i < 8) {
                tag.push(<Food carbohydrate={fn.carbohydrate} fat={fn.fat} protein={fn.protein}
                               name={fn.food.name} kcal={fn.food.kcal}/>); //10
                total += fn.food.kcal;
            }
            if (i == myList.length - 1) {
                tag.push("총칼로리:" + total + "kcal");
                if (i >= 7) {
                    tag.push(<Getbr/>);
                    tag.push("8개까지만 추가 할 수 있어요.");
                }
            }
        }

        return (
            <div className="my-food-list">
                {tag}
            </div>

        );
    }

    function printList(myList) {
        var root = ReactDOM.createRoot(document.getElementById("mine"));
        root.render(<List myList={myList}/>);
    }
</script>

<script>
    const $searchButton = document.querySelector("#side-search-open");
    const $inputName = document.querySelector("#inputName");
    const $table = document.querySelector("table");
    const $reset = document.querySelector("#reset");
    const $searchk = document.querySelector("#searchk");
    let checkTotal = 0;

    /*  탄수화물: {props.carbohydrate}g
                        지방 : {props.fat}g
                        단백질 : {props.protein}g</p>*/

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
        printList(myList);
        checkTotal = myList.length;
        for (let i = 0; i < myList.length; i++) {
            let fn = myList[i];
            let $inputBox = document.getElementById(fn.food.foodNo);
            console.log($inputBox);
            if ($inputBox !== null) {
                $inputBox.setAttribute("checked", "checked");
            }
        }
    }

    function resetSession(myList) { //선택한 음식 초기화
        printList(myList);
        checkTotal = myList.length;
        for (let i = 0; i < 15; i++) {
            let $inputBox = document.querySelectorAll(".select");
            $inputBox[i].checked = false;
        }
    }

    $searchButton.onclick = e => { //검색창 버튼
        location.href = "/food/list?keyword=" + $inputName.value;
    };

    $table.onchange = e => { //체크박스 선택시
        if (!e.target.matches(".select")) { //
            return;
        }
        if (e.target.checked) { //check를 하는 거면
            if (checkTotal < 8) { //8개까지만
                fetch('/api/foods/' + e.target.value)
                    .then(res => res.json())
                    .then(myList => {
                        showFoodData(myList);
                    });
                checkTotal++;
            } else {    //check 를 푸는 거면
                e.target.checked = false;
            }
        } else {
            if (checkTotal < 9) { //지울때
                fetch('/api/foods/' + e.target.value, {method: 'delete'})
                    .then(res => res.json())
                    .then(myList => {
                        showFoodData(myList);
                    });
                checkTotal--;
            }

        }
    }
    $reset.onclick = e => { //초기화 버틑 클릭시
        fetch('/api/foods/', {method: 'delete'})
            .then(res => res.json())
            .then(myList => {
                resetSession(myList);
            });
    };
    $searchk.onclick =e =>{
      location.href="/food/select-nutrient";
    };


    $(function () { //onload되면
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
