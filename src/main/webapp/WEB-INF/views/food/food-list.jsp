<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <%@include file="./include/header_css.jsp"%>

    <%--<link rel="stylesheet" type="text/css" href="./css/list.css">--%>
    <style>
        table {
            width: 60%;
            border: 2px solid #444444;
            box-sizing: border-box;
            margin:auto;
            border-collapse: separate;
            border-radius: 2em;
            padding: 10px;
        }
        th, td {
            border: 1px solid #444444;
            box-sizing: border-box;
            border-collapse: collapse;
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
            margin: 70px auto 50px;
            width: 60%;
            overflow: hidden;
        }

        div.div_search input[type=text] {
            width: 80%;
            float: left;
            border-radius: 1em;
            border:2px solid #000000;
        }
        div.div_search button[type=button] {
            width: 15%;
            float: right;
            border-radius: 2em;
        }

        div.div_search button[type=button]:hover {
            background: #4e555b;
            color: #ffff;
            cursor: pointer;
        }

        div.bottom_section nav.bottom_nav ul {
            width: 70%;
            list-style:none;
            margin: 40px auto;
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
        }

        div.bottom_section nav.bottom_nav ul li.active a.page-link,
        div.bottom_section nav.bottom_nav ul li.active a.page-link:hover,
        div.bottom_section nav.bottom_nav ul li.active a.page-link:active{
            color: #ffffff !important;
            background: #cccccc !important;
        }

    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="./include/side_nav.jsp"%>

<div class="boxed-page">

    <%@include file="./include/header_nav.jsp"%>

        <div class="div_search">
            <form>
                <input type="text" placeholder="검색하고 싶은 음식을 적어주세요" name="" value="">
            </form>
            <button type="button">검색</button>
        </div>

        <table class="test">
            <tr>
                <th style="width:10%">No</th>
                <th style="width:50%">음식명</th>
                <th style="width:10%">칼로리</th>
                <th style="width:30%">이미지</th>
            </tr>

            <c:forEach var="f" items="${fList}">
                <tr>
                    <td>${f.foodNo}번</td>
                    <td onclick="location.href='/food/nutrient/${f.foodNo}'">${f.name}</td>
                    <td>${f.kcal}(kcal)</td>
                    <td>${f.img}</td>
                </tr>
            </c:forEach>
        </table>

        <div class="bottom_section">
            <nav class="bottom_nav">
                <ul class="pagination pagination-lg pagination-custom">
                    <c:if test="${pm.prev}">
                        <li class="page-item"><a class="page-link"
                               href="/food/list?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}">prev</a></li>
                    </c:if>

                    <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                        <li data-page-num="${n}" class="page-item">
                            <a class="page-link" href="/food/list?pageNum=${n}&amount=${pm.page.amount}">${n}</a>
                        </li>
                    </c:forEach>

                    <c:if test="${pm.next}">
                        <li class="page-item"><a class="page-link"
                                href="/food/list?pageNum=${pm.endPage + 1}&amount=${pm.page.amount} ">next</a></li>
                    </c:if>
                </ul>
            </nav>
        </div>






    <%@include file="./include/footer.jsp"%>
</div>
<%@include file="./include/footer_js.jsp"%>

<script>

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
