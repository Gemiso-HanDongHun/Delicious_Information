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
            border: 1px solid #444444;
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
                    <td onclick="location.href='/food/nutrient'">${f.name}</td>
                    <td>${f.kcal}(kcal)</td>
                    <td>${f.img}</td>
                </tr>
            </c:forEach>
        </table>

<%--    <%@include file="./include/footer.jsp"%>--%>
</div>
<%--<%@include file="./include/footer_js.jsp"%>--%>

<script>

    //상세보기 요청 이벤트
    /*function detailEvent() {
        const $table = document.querySelector(".test");

        $table.addEventListener('click', e => {


            if (!e.target.matches('.test td')) return;

            let bn = e.target.parentElement.firstElementChild.textContent;


            location.href = '/food/food-detail/' + bn
                + "?foodNo=${pm.page.pageNum}"
                + "&name=${pm.page.amount}";
        });
    }
*/

</script>


</body>
</html>
