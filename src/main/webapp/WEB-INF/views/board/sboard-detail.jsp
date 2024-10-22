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

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }
        .dropdown-item:active {
            background: none;
        }

        body {
            font-family: 'MaplestoryOTFBold';
        }

        div li {
            font-weight: 800;
        }

        body {
            background: #ffffff;
        }

        div.flex-column p.maintext {
            margin-left: 105px;
        }

        section#middle {
            width: 37%;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin:0 0 30px 0;
        }

        .boxed-page-bottom {
            background: #ffffff;
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

        #navbar-header .dropdown a#navibarDropdown {
            padding-top: 0px;
            top: -38px;
            position: relative;
            /*background: #FFFFFF;*/
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

        #navbar-header .active2 a#home {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active3 a#list {
            position: relative;
            top: 40px;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        li a#sign-in {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        div p#p1, p#p2, p#p3 {
            font-weight: 800;
            margin-left: 8px;
        }

        div.col-12 {
            text-align: center;
        }

        #mod-btn {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            margin-top: 15px;
            margin-bottom: 10px;
            background-color: whitesmoke;
            border: 1px solid black;
            font-weight: 800;
            /*position: absolute;*/
            /*top: 97%;*/
            /*left: 80%;*/
            z-index: 2000;

            float: right;
            margin-right: 5px;
        }

        #mod-btn:hover {
            color: orangered;
            background-color: lightgrey;
            cursor: pointer;
            font-weight: 700;
        }

        #del-btn {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            margin-top: 15px;
            margin-bottom: 10px;
            background-color: whitesmoke;
            border: 1px solid black;
            font-weight: 800;
            /*position: absolute;*/
            /*top: 97%;*/
            /*left: 80%;*/
            float: right;
            z-index: 2000;
            color: black;
        }

        #del-btn:hover {
            color: orangered;
            background-color: lightgrey;
            cursor: pointer;
            font-weight: 700;
        }

        div#mod-btn, #del-btn {
            margin-left: 7px;
        }

        #replies {
            width: 46%;
            margin: 0 auto 30px;
        }

        p#title{
            font-weight: 16;
        }


    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

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
                        <p id="title">𝓢𝓾𝓰𝓰𝓮𝓼𝓽𝓲𝓸𝓷</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                문의게시판
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
                                <a class="nav-link" id="sign-out" onclick="signOut()">로그아웃</a>
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
                                       id="sign-out" onclick="signOut()">로그아웃</a>
                                </div>

                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>


    <section class="d-flex align-items-center flex-column col-5 wrapcontent" id="middle">
        <div class="title col-12"><h1></h1></div>
        <br/>
        <form id="writeForm" class="col-12" action="/board/sboard/write" method="post">
            <div class="form-group">

                <p id="p1">제목</p>


                <input type="text" id="title-input" class="form-control col-12" name="title" value="${sb.title}"
                       disabled><br/>
                <p id="p2">작성자</p>
                <input type="text" id="writer-input" class="form-control col-12" name="writer" value="${sb.writer}"
                       disabled><br/>
                <p id="p3">문의내용</p>
                <textarea class="form-control col-12" rows="13" disabled>${sb.content}</textarea>

                <c:if test="${loginUser.account == sb.writer || loginUser.grade == 'admin'}">
                    <button id="del-btn" type="button" class="btn btn-danger">삭제</button>
                    <button id="mod-btn" type="button" class="btn btn-warning">수정</button>
                </c:if>


            </div>
        </form>

    </section>
</div>


<div class="boxed-page-bottom">
        <!-- 댓글 영역 -->

        <div id="replies" class="row">
            <div class="offset-md-1 col-md-10">
                <!-- 댓글 쓰기 영역 -->
                <div class="card">
                    <div class="card-body">

                        <c:if test="${empty loginUser}">
                            <a href="/member/sign-in">댓글은 로그인 후 작성 가능합니다.</a>
                        </c:if>

                        <c:if test="${not empty loginUser}">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label for="newReplyText" hidden>댓글 내용</label>
                                        <textarea rows="3" id="newReplyText" name="replyText" class="form-control"
                                                  placeholder="댓글을 입력해주세요."></textarea>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="newReplyWriter" hidden>댓글 작성자</label>
                                        <input id="newReplyWriter" name="replyWriter" type="text"
                                               value="${loginUser.account}" class="form-control" placeholder="작성자 이름"
                                               readonly style="margin-bottom: 6px;">
                                        <button id="replyAddBtn" type="button"
                                                class="btn btn-dark form-control"
                                                style="background: whitesmoke; color: black">등록
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div> <!-- end reply write -->


                <!--댓글 내용 영역-->
                <div class="card">
                    <!-- 댓글 내용 헤더 -->
                    <div class="card-header text-white m-0" style="background:whitesmoke;">
                        <div class="float-left" style="color: black; font-weight: 700">댓글 (<span id="replyCnt">0</span>)
                        </div>
                    </div>

                    <!-- 댓글 내용 바디 -->
                    <div id="replyCollapse" class="card">
                        <div id="replyData">
                            <!--
                            < JS로 댓글 정보 DIV삽입 >
                        -->
                        </div>

                        <!-- 댓글 페이징 영역 -->
                        <ul class="pagination justify-content-center">
                            <!--
                            < JS로 댓글 페이징 DIV삽입 >
                        -->
                        </ul>
                    </div>
                </div> <!-- end reply content -->
            </div>
        </div> <!-- end replies row -->


        <!-- 댓글 수정 모달 -->
        <div class="modal fade bd-example-modal-lg" id="replyModifyModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header" style="background: whitesmoke; color: white;">
                        <h4 class="modal-title">댓글 수정하기</h4>
                        <button type="button" class="close text-white" data-bs-dismiss="modal">X</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="form-group">
                            <input id="modReplyId" type="hidden">
                            <label for="modReplyText" hidden>댓글내용</label>
                            <textarea id="modReplyText" class="form-control" placeholder="수정할 댓글 내용을 입력하세요."
                                      rows="3"></textarea>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button id="replyModBtn" type="button" class="btn btn-dark">수정</button>
                        <button id="modal-close" type="button" class="btn btn-danger"
                                data-bs-dismiss="modal">닫기
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- end replyModifyModal -->
    </div>

</body>
<!-- bootstrap js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" defer></script>
<script>
    const $modBtn = document.getElementById('mod-btn');
    const $delBtn = document.getElementById('del-btn');
    const $listBtn = document.getElementById('list-btn');

    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    function signOut() {
        if (confirm('로그아웃하시겠습니까?')) {
            location.href = '/member/sign-out';
        }
    }

    if ($modBtn !== null) {
        //수정버튼
        $modBtn.onclick = e => {
            location.href = '/board/suggestionBoard/modify?boardNo=${sb.boardNo}';
        };
    }

    if ($delBtn !== null) {

        //삭제버튼
        $delBtn.onclick = e => {
            if (!confirm('정말 삭제하시겠습니까?')) {
                return;
            }
            location.href = '/board/suggestionBoard/delete?boardNo=${sb.boardNo}';
        };
    }
    //목록버튼
    $listBtn.onclick = e => {
        console.log('목록버튼 클릭!');
        location.href = '/board/suggestionBoard?pageNum=${p.pageNum}&amount=${p.amount}';
    };
</script>
<!-- 댓글관련 script -->
<script>

    // 로그인한 회원 계정명
    const currentAccount = '${loginUser.account}';
    const grade = '${loginUser.grade}';

    //원본 글 번호
    const bno = '${sb.boardNo}';
    // console.log('bno:', bno);

    // 댓글 요청 URL
    const URL = '/api/v1/replies';

    //날짜 포맷 변환 함수
    function formatDate(datetime) {
        //문자열 날짜 데이터를 날짜객체로 변환
        const dateObj = new Date(datetime);
        // console.log(dateObj);
        //날짜객체를 통해 각 날짜 정보 얻기
        let year = dateObj.getFullYear();
        //1월이 0으로 설정되어있음.
        let month = dateObj.getMonth() + 1;
        let day = dateObj.getDate();
        let hour = dateObj.getHours();
        let minute = dateObj.getMinutes();
        //오전, 오후 시간체크
        let ampm = '';
        if (hour < 12 && hour >= 6) {
            ampm = '오전';
        } else if (hour >= 12 && hour < 21) {
            ampm = '오후';
            if (hour !== 12) {
                hour -= 12;
            }
        } else if (hour >= 21 && hour <= 24) {
            ampm = '밤';
            hour -= 12;
        } else {
            ampm = '새벽';
        }
        //숫자가 1자리일 경우 2자리로 변환
        (month < 10) ? month = '0' + month : month;
        (day < 10) ? day = '0' + day : day;
        (hour < 10) ? hour = '0' + hour : hour;
        (minute < 10) ? minute = '0' + minute : minute;
        return year + "-" + month + "-" + day + " " + ampm + " " + hour + ":" + minute;
    }


    // 댓글 페이지 태그 생성 렌더링 함수
    function makePageDOM(pageInfo) {
        let tag = "";
        const begin = pageInfo.beginPage;
        const end = pageInfo.endPage;
        //이전 버튼 만들기
        if (pageInfo.prev) {
            tag += "<li class='page-item'><a class='page-link page-active' href='" + (begin - 1) +
                "'>이전</a></li>";
        }
        //페이지 번호 리스트 만들기
        for (let i = begin; i <= end; i++) {
            let active = '';
            if (pageInfo.page.pageNum === i) {
                active = 'p-active';
            }

            tag += "<li class='page-item " + active + "'><a class='page-link page-custom' href='" + i +
                "'>" + i + "</a></li>";
        }
        //다음 버튼 만들기
        if (pageInfo.next) {
            tag += "<li class='page-item'><a class='page-link page-active' href='" + (end + 1) +
                "'>다음</a></li>";
        }

        // 페이지태그 렌더링
        const $pageUl = document.querySelector('.pagination');
        $pageUl.innerHTML = tag;

        // ul에 마지막페이지 번호 저장.
        $pageUl.dataset.fp = pageInfo.finalPage;


    }


    // 댓글 목록 DOM을 생성하는 함수
    function makeReplyDOM({
                              replyList,
                              count,
                              maker
                          }) {
        // 각 댓글 하나의 태그
        let tag = '';

        if (replyList === null || replyList.length === 0) {
            tag += "<div id='replyContent' class='card-body'>댓글이 아직 없습니다! ㅠㅠ</div>";

        } else {
            for (let rep of replyList) {
                tag += "<div id='replyContent' class='card-body' data-replyId='" + rep.replyNo + "'>" +
                    "    <div class='row user-block'>" +
                    "       <span class='col-md-3'>" +
                    "         <b>" + rep.replyWriter + "</b>" +
                    "       </span>" +
                    "       <span class='offset-md-6 col-md-3 text-right'><b>" + formatDate(rep.replyDate) +
                    "</b></span>" +
                    "    </div><br>" +
                    "    <div class='row'>" +
                    "       <div class='col-md-6'>" + rep.replyText + "</div>" +
                    "       <div class='offset-md-2 col-md-4 text-right'>";

                if (currentAccount === rep.replyWriter || grade === 'admin') {
                    tag +=
                        "         <a id='replyModBtn' class='btn btn-sm btn-outline-dark' data-bs-toggle='modal' data-bs-target='#replyModifyModal'>수정</a>&nbsp;" +
                        "         <a id='replyDelBtn' class='btn btn-sm btn-outline-dark' href='#'>삭제</a>";
                }
                tag += "       </div>" +
                    "    </div>" +
                    " </div>";
            }
        }

        // 댓글 목록에 생성된 DOM 추가
        document.getElementById('replyData').innerHTML = tag;

        // 댓글 수 배치
        document.getElementById('replyCnt').textContent = count;

        // 페이지 렌더링
        makePageDOM(maker);


    }

    // 댓글 목록을 서버로부터 비동기요청으로 불러오는 함수
    function showReplies(pageNum = 1) {

        fetch(URL + '?boardNo=' + bno + '&pageNum=' + pageNum)
            .then(res => res.json())
            .then(replyMap => {
                // console.log(replyMap.replyList);
                makeReplyDOM(replyMap);
            });
    }

    // 페이지 버튼 클릭이벤트 등록 함수
    function makePageButtonClickEvent() {
        // 페이지 버튼 클릭이벤트 처리
        const $pageUl = document.querySelector('.pagination');
        $pageUl.onclick = e => {
            if (!e.target.matches('.page-item a')) return;

            e.preventDefault();
            // 누른 페이지 번호 가져오기
            const pageNum = e.target.getAttribute('href');
            // console.log(pageNum);

            // 페이지 번호에 맞는 목록 비동기 요청
            showReplies(pageNum);
        };
    }

    // 댓글 등록 이벤트 처리 핸들러 등록 함수
    function makeReplyRegisterClickEvent() {

        document.getElementById('replyAddBtn').onclick = makeReplyRegisterClickHandler;
    }


    // 댓글 등록 이벤트 처리 핸들러 함수
    function makeReplyRegisterClickHandler(e) {

        const $writerInput = document.getElementById('newReplyWriter');
        const $contentInput = document.getElementById('newReplyText');

        // 서버로 전송할 데이터들
        const replyData = {
            replyWriter: $writerInput.value,
            replyText: $contentInput.value,
            boardNo: bno
        };

        // POST요청을 위한 요청 정보 객체
        const reqInfo = {
            method: 'POST',
            headers: {
                'content-type': 'application/json'
            },
            body: JSON.stringify(replyData)
        };

        fetch(URL, reqInfo)
            .then(res => res.text())
            .then(msg => {
                if (msg === 'insert-success') {
                    alert('댓글 등록 성공');
                    // 댓글 입력창 리셋
                    // $writerInput.value = '';
                    $contentInput.value = '';
                    // 댓글 목록 재요청
                    showReplies(document.querySelector('.pagination').dataset.fp);
                } else {
                    alert('댓글 등록 실패');
                }
            });
    }

    // 댓글 수정화면 열기 상세처리
    function processModifyShow(e, rno) {

        // console.log('수정버튼 클릭함!! after');

        // 클릭한 버튼 근처에 있는 댓글 내용텍스트를 얻어온다.
        const replyText = e.target.parentElement.parentElement.firstElementChild.textContent;
        console.log('수정 댓글내용:', replyText);

        // 모달에 해당 댓글내용을 배치한다.
        document.getElementById('modReplyText').value = replyText;

        // 모달을 띄울 때 다음 작업(수정완료처리)을 위해 댓글번호를 모달에 달아두자.
        const $modal = document.querySelector('.modal');
        $modal.dataset.rno = rno;
    }

    // 댓글 삭제 상세처리
    function processRemove(rno) {
        if (!confirm('진짜로 삭제합니까??')) return;

        fetch(URL + '/' + rno, {
            method: 'DELETE'
        })
            .then(res => res.text())
            .then(msg => {
                if (msg === 'del-success') {
                    alert('삭제 성공!!');
                    showReplies(); // 댓글 새로불러오기
                } else {
                    alert('삭제 실패!!');
                }
            });
    }


    // 댓글 수정화면 열기, 삭제 처리 핸들러 정의
    function makeReplyModAndDelHandler(e) {

        const rno = e.target.parentElement.parentElement.parentElement.dataset.replyid;
        console.log('mod get rno: ', rno);

        e.preventDefault();

        // console.log('수정버튼 클릭함!! before');
        if (e.target.matches('#replyModBtn')) {
            processModifyShow(e, rno);
        } else if (e.target.matches('#replyDelBtn')) {
            processRemove(rno);
        }
    }

    // 댓글 수정 화면 열기, 삭제 이벤트 처리
    function openModifyModalAndRemoveEvent() {

        const $replyData = document.getElementById('replyData');
        $replyData.onclick = makeReplyModAndDelHandler;
    }

    // 댓글 수정 비동기 처리 이벤트
    function replyModifyEvent() {

        const $modal = $('#replyModifyModal');

        document.getElementById('replyModBtn').onclick =
            e => {
                // console.log('수정 완료 버튼 클릭!');

                // 서버에 수정 비동기 요청 보내기
                const rno = e.target.closest('.modal').dataset.rno;
                console.log('mod post rno', rno);

                const reqInfo = {
                    method: 'PUT',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify({
                        replyText: $('#modReplyText').val(),
                        replyNo: rno
                    })
                };


                fetch(URL + '/' + rno, reqInfo)
                    .then(res => res.text())
                    .then(msg => {
                        if (msg === 'mod-success') {
                            alert('수정 성공!!');
                            $modal.modal('hide'); // 모달창 닫기
                            showReplies(); // 댓글 새로불러오기
                        } else {
                            alert('수정 실패!!');
                        }
                    });
            };
    }


    // 메인 실행부
    (function () {

        // 초기 화면 렌더링시 댓글 1페이지 렌더링
        showReplies();

        // 댓글 페이지 버튼 클릭이벤트 처리
        makePageButtonClickEvent();

        // 댓글 등록 버튼 클릭이벤트 처리
        makeReplyRegisterClickEvent();

        // 댓글 수정 모달 오픈, 삭제 이벤트 처리
        openModifyModalAndRemoveEvent();

        // 댓글 수정 완료 버튼 이벤트 처리
        replyModifyEvent();


    })();
</script>


</html>