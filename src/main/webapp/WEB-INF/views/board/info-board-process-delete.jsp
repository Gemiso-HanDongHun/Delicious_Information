<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form id="del-form2" action="/board/infoBoard/delete" method="post">
        <input type="hidden" name="infoNo" value="${infoNo}">
    </form>

    <script>
        const $form = document.getElementById('del-form2')
        $form.submit();
    </script>

</body>
</html>