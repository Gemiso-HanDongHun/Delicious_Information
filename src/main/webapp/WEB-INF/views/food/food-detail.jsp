<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">

<head>

    <style>
        .board-list {
            width: 70%;
            margin: 0 auto;
        }

        .board-list .articles {
            margin: 250px auto 100px;
            border-collapse: collapse;
            font-size: 1.5em;
            border-radius: 10px;
        }

        .board-list .btn-write {
            /* background: orange; */
            text-align: right;
            position: relative;
            top: -70px;
        }

        header {
            background: #222;
            border-bottom: 1px solid #2c2c2c;
        }

    </style>
</head>

<body>

<div class="wrap">

    <div class="board-list">
        <table class="table table-dark table-striped table-hover articles">

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

            <c:forEach var="fn" items="${fList}">
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

</div>
</body>

</html>