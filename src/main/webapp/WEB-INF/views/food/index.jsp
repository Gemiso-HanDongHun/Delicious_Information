<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .test {
            border: 2px solid black;
        }
        tr,td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<div class="wrap">
    <input type="text" value="검색명">
    <button>클릭</button>

    <table class="test">
        <tr>
            <th>번호</th>
            <th>음식명</th>
            <th>칼로리</th>
            <th>이미지</th>
        </tr>

        <c:forEach var="f" items="${fList}">
            <tr>
                <td>${f.foodNo}</td>
                <td>${f.name}</td>
                <td>${f.kcal}</td>
                <td>${f.img}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>








    (function () {





    })();

</script>
</body>
</html>
