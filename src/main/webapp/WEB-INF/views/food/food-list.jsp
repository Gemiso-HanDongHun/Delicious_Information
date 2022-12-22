<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>

    <%@include file="./include/header_css.jsp" %>

    <style>
        @font-face {
            font-family: 'MaplestoryOTFBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'MaplestoryOTFBold';
            margin: 0;
            line-height: 1.5;
        }

        button#reset {
            background-color: whitesmoke;
            color: black;
            margin: 10px;
            margin-left: 90px;

            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
        }

        button#searchk {
            background-color: whitesmoke;
            color: black;
            margin: 10px;
            margin-left: 10px;

            /*border-radius: 2em;*/
            padding: 5px;
            border: 1px solid whitesmoke;
            background-color: whitesmoke;
        }

        button.btn-info:hover {
            color: whitesmoke;
        }

        .side-t {
            width: 17%;
            height: 600px;
            position: absolute;
            left: 150px;
            margin: 11px 0 0 0;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            border-collapse: collapse;
            background: whitesmoke;
            line-height: 202%;
            padding: 15px;

        }

        div.side-t div.fBaordTitle {
            width: 80%;
            margin: auto;
        }

        div.side-t div.fBaordTitle h1 {
            font-size: 2vw;
            text-align: center;
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
            border: 1px solid whitesmoke


        }

        table.side-t-main th {
            text-align: center;
        }

        @font-face {
            font-family: 'ONE-Mobile-POP';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-POP.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        table.side-t-main tr td {
            text-align: center;
            border-radius: 0.5em;
            font-size: 16px;
        }

        aside {
            font-size: 15px;
        }


        div.boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/ 100% 100%;
            background-repeat: no-repeat;
            margin: 0;
        }

        /* 외부 폰트 사용 */
        @font-face {
            font-family: 'Ansungtangmyun-Bold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/Ansungtangmyun-Bold.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        /* List CSS */
        /* 테이블 전체 */
        .test {
            width: 35%;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 24px;
            background: rgb(246, 245, 243, 0.5);
            line-height: 202%;
            z-index: 1000;
        }

        /* 내부 tr 배경 */
        table.test tr {
            /*background: #ffffff;*/
        }

        /* th 중앙 정렬 및 외부 폰트 */
        div.boxed-page table.test th {
            text-align: center;
            font-weight: 700;
        }

        /* td 중앙 정렬 */
        div.boxed-page table.test td {
            text-align: center;
            font-size: 17px;
        }

        /* 전체 리스트에서 음식명 마우스 오버시 마우스 포인터*/
        div.boxed-page table td:nth-child(2):hover {
            cursor: pointer;
            background: lightgray;
            color: #ffff;
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
            background-color: white;
            margin-bottom: 30px;
            /*opacity: 0.5;*/
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
            border: 0;
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
            border: solid 10px whitesmoke;
            padding: 10px;
            margin-left: 70px;
        }

        .boxed-page aside.aside .side-bar-list .myList {
            text-align: center;
        }

        #loginAccount:hover {
            color: #f44336;
            cursor: pointer;
        }

        #sign-out:hover {
            color: #f44336;
            cursor: pointer;
        }

        @font-face {
            font-family: 'MaplestoryOTFBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        div li {
            font-weight: 900;
        }

        span.xbutton{
            position:absolute;
            left:80%;

        }
        span.xbutton:hover{
            cursor:pointer;
            color:red;
        }

        div.div_search{
            background-color: white;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0;
        }

        .dropdown-item:active {
            background: none;
        }

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }

        #navbar-header .dropdown .dropdown-menu {
            top: 90%;
            left : -15px;
            display: none;
        }

        #navbar-header .navbar-nav .dropdown-menu{
            border: 2px solid lightgrey;
            box-shadow: none;
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

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                게시판
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
                                    <a class="dropdown-item"
                                       href="/member/mypage">마이 페이지</a>
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

    <div class="div_search">
        <form id="searchForm">
            <input type="text" placeholder="검색하고 싶은 음식을 적어주세요" style="opacity: 1" name="keyword" id="inputName"
                   value="${s.keyword}">
            <a id="side-search-open" class="nav-link" href="#">
                <span class="lnr lnr-magnifier"></span>
            </a>

        </form>
    </div>

    <div class="side-t"> <%-- 이미지요소 --%>
        <div class="fBaordTitle">
            <h1>𝓕𝓻𝓮𝓮𝓭𝓸𝓶</h1>
        </div>
        <table class="side-t-main">

            <%--            <tr>--%>
            <%--                <th style="width:100%">제목</th>--%>
            <%--            </tr>--%>

            <c:forEach var="af" items="${AllfbList}" begin="0" end="12">
                <tr>
                    <input type="hidden" name="freeboardNo" value="${af.freeboardNo}">
                    <td style="width:100%;   " onclick="location.href='/board/freeBoard'">${af.shortTitle}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <table class="test" id="foodtable">
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
            <div class="myList">내가 선택한 음식</div>
            <div style="text-align: center;">~~~~~~~~~~~~~~~~~</div>
            <div id="mine">

            </div>
        </div>
        <div class="aside-down d-flex justify-content-center">
            <button type="button" class="btn btn-info" id="reset" style="background-color: whitesmoke">초기화</button>
            <button type="button" class="btn btn-info" id="searchk">검색</button>
            <%--            <button type="button" onclick="location.href='/board/suggestionBoard'"  id="board">게시판</button>--%>
        </div>
    </aside>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
<script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>

<script type="text/babel">

    function Food(props) { //반복될 구간
        return (
            <div className="my-food">
                <p>{props.name} <span className="xbutton" data-num={props.no} onClick= {remove}>x</span><br/>
                    칼로리 : {props.kcal}kcal
                </p>
            </div>
        );
    }



    function Getbr() { //띄어쓰기
        return (
            <br/>
        );
    }

    function List(props) { //그리기
        var myList = props.myList;
        //tr을 반복한 컨테츠를 구성
        var tag = []; //여기에 tr을 모아 둘것임
        var total = 0;
        for (let i = 0; i < myList.length; i++) {
            let fn = myList[i];
            if (i < 8) {
                tag.push(<Food carbohydrate={fn.carbohydrate} fat={fn.fat} protein={fn.protein}
                               name={fn.food.name} kcal={fn.food.kcal} no={fn.food.foodNo}/>) ; //10
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

    function printList(myList) { //react로 선택한 리스트 보여주기
        var root = ReactDOM.createRoot(document.getElementById("mine"));
        root.render(<List myList={myList}/>);
    }
</script>

<script>
    const $searchButton = document.querySelector("#side-search-open");
    const $inputName = document.querySelector("#inputName");
    const $table = document.querySelector("#foodtable");
    const $reset = document.querySelector("#reset");
    const $searchk = document.querySelector("#searchk");
    let checkTotal = 0;

    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }
    const remove=(e)=>{
        if (checkTotal < 9) { //지울때
            fetch('/api/foods/' + e.target.dataset.num, {method: 'delete'})
                .then(res => res.json())
                .then(myList => {
                    showFoodData(myList);
                    let $inputBox = document.getElementById(e.target.dataset.num);
                    console.log($inputBox);
                    if ($inputBox !== null) {
                        $inputBox.checked=false;
                    }
                });
            checkTotal--;
        }
    }

    function signOut() {
        if (confirm('로그아웃하시겠습니까?')) {
            location.href = '/member/sign-out';
        }
    }


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
    };

    $reset.onclick = e => { //초기화 버틑 클릭시
        fetch('/api/foods/', {method: 'delete'})
            .then(res => res.json())
            .then(myList => {
                resetSession(myList);
            });
    };

    $searchk.onclick = e => { //선택한 음식들 검색 버튼 클릭시
        location.href = "/food/select-nutrient";
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
