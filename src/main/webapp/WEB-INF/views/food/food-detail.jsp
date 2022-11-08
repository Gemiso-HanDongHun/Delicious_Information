<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">

<head>

    <style>
        .nutrient {
            border: 2px solid black;
        }

        tr,td {
            border: 1px solid black;
            height: 30px;
            margin: auto;

        }

    </style>
</head>

<body>

<div class="wrap">

    <table class="nutrient">

        <tr>
            <th>번호</th>
            <th>탄수화물</th>
            <th>단백질</th>
            <th>지방</th>
            <th>비타민A</th>
            <th>비타민C</th>
            <th>비타민E</th>
            <th>칼슘</th>
            <th>철분</th>
            <th>마그네슘</th>
            <th>나트륨</th>
            <th>오메가3</th>
        </tr>

            <c:forEach var="fn" items="${fnList}">
                <tr>
                    <td>${fn.nutrientNo}</td>
                    <td>${fn.carbohydrate}</td>
                    <td>${fn.protein}</td>
                    <td>${fn.fat}</td>
                    <td>${fn.vitaminA}</td>
                    <td>${fn.vitaminC}</td>
                    <td>${fn.vitaminE}</td>
                    <td>${fn.calcium}</td>
                    <td>${fn.iron}</td>
                    <td>${fn.magnesium}</td>
                    <td>${fn.sodium}</td>
                    <td>${fn.omega}</td>
                </tr>
            </c:forEach>

    </table>

</div>
</body>

</html>