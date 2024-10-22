<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="../include/food-list/food-list-css.jsp" %>
    <style>
        label#foodNo {
            font-size: 20px;
        }
    </style>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <%-- <!-- Preloader -->
     <div class="preloader flex-column justify-content-center align-items-center">
         <img class="animation__shake" src="/adminLTE/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
     </div>--%>


    <!-- header -->
    <%@include file="../include/header.jsp" %>
    <!-- /header -->

    <!-- Main Sidebar Container -->
    <%@include file="../include/sidebar.jsp" %>
    <!-- Main Sidebar Container -->

    <!-- Content Wrapper. Contains page content -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Food</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">DataTables</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h2 class="card-title">Food Info</h2>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label id="foodNo">Food No : ${fn.food.foodNo}</label>
                                                <input type="hidden" class="form-control" name="nutrientNo"
                                                       value="${fn.nutrientNo}">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="foodName">Food Name</label>
                                                <input type="text" class="form-control" name="name" id="foodName"
                                                       value="${fn.food.name}" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="form-group">
                                                <label for="servingSize">1회 제공량</label>
                                                <input type="text" class="form-control" name="servingSize" id="servingSize"
                                                       value="${fn.servingSize}" >
                                            </div>

                                            <div class="form-group">
                                                <label for="foodKcal">Food Kcal</label>
                                                <input type="number" class="form-control" name="kcal" id="foodKcal"
                                                       value="${fn.food.kcal}">
                                            </div>
                                            <div class="form-group">
                                                <label for="carbohydrate">탄수화물</label>
                                                <input type="number" class="form-control" name="carbohydrate"
                                                       id="carbohydrate" value="${fn.carbohydrate}">
                                            </div>
                                            <div class="form-group">
                                                <label for="protein">단백질</label>
                                                <input type="number" class="form-control" name="protein" id="protein"
                                                       value="${fn.protein}">
                                            </div>
                                            <div class="form-group">
                                                <label for="fat">지방</label>
                                                <input type="number" class="form-control" name="fat" id="fat"
                                                       value="${fn.fat}">
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-group">
                                                <label for="vitaminA">vitaminA</label>
                                                <input type="number" class="form-control" name="vitaminA" id="vitaminA"
                                                       value="${fn.vitaminA}">
                                            </div>
                                            <div class="form-group">
                                                <label for="vitaminC">vitaminC</label>
                                                <input type="number" class="form-control" name="vitaminC" id="vitaminC"
                                                       value="${fn.vitaminC}">
                                            </div>
                                            <div class="form-group">
                                                <label for="vitaminE">vitaminE</label>
                                                <input type="number" class="form-control" name="vitaminE" id="vitaminE"
                                                       value="${fn.vitaminE}">
                                            </div>
                                            <div class="form-group">
                                                <label for="calcium">calcium</label>
                                                <input type="number" class="form-control" name="calcium" id="calcium"
                                                       value="${fn.calcium}">
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-group">
                                                <label for="iron">iron</label>
                                                <input type="number" class="form-control" name="iron" id="iron"
                                                       value="${fn.iron}">
                                            </div>
                                            <div class="form-group">
                                                <label for="magnesium">magnesium</label>
                                                <input type="number" class="form-control" name="magnesium"
                                                       id="magnesium" value="${fn.magnesium}">
                                            </div>
                                            <div class="form-group">
                                                <label for="sodium">sodium</label>
                                                <input type="number" class="form-control" name="sodium" id="sodium"
                                                       value="${fn.sodium}">
                                            </div>
                                            <div class="form-group">
                                                <label for="omega">omega</label>
                                                <input type="number" class="form-control" name="omega" id="omega"
                                                       value="${fn.omega}">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="file">Food Image</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="file">
                                                <label class="custom-file-label" for="file">이미지 수정</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-success">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12 col-lg-6 col-xl-4" style="margin:auto;">
                                                    <div class="card mb-2 bg-gradient-dark">
                                                        <img class="card-img-top"
                                                             src="/admin/loadFile?foodNo=${fn.food.foodNo}" alt="foodImg">
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-lg-6 col-xl-4" style="margin:auto;">
                                                    <div class="card mb-2 bg-gradient-dark" id="img">
                                                        <%--img 자리--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- /.card-body -->


                                <div class="card-footer">
                                    <button type="button" class="btn btn-warning">수정</button>
                                    <button type="button" class="btn btn-danger">삭제</button>
                                </div>
                            </form>
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!--footer -->
    <%@ include file="../include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="../include/food-list/food-list-js.jsp" %>
<script src="/adminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script>
    const $form = document.querySelector("form");
    const $button = document.querySelectorAll("button");
    const $input = document.querySelectorAll("input");
    const $file = document.querySelector("#file");

    const img = document.createElement("img");
    let check = true;

    function isValidate() {
        if ($input[0].value.trim() === '' || $input[1].value.trim() === '') {
            alert("foodName과 kcal는 필수값입니다")
            return false;
        }
        return true;
    }

    $button[0].onclick = function () {
        if (confirm("아래와 같이 수정 하시겠습니까?\n" +
            "foodName : " + $input[0].value + "\n" +
            "kcal : " + $input[1].value)) {
            if (isValidate()) {
                $form.action = "/admin/food/modify/${fn.food.foodNo}"
                $form.method = "post"
                $form.encoding = "multipart/form-data";
                $form.submit();
            }
        }
    };

    $button[1].onclick = function () {
        if (confirm("정말로 삭제 하시겠습니까?")) {
            $form.action = "/admin/food/delete/${fn.food.foodNo}"
            $form.method = "post"
            $form.submit();
        }
    };
    $file.onchange = function (e) {
        const reader = new FileReader();

        reader.onload = function (e) {

            img.setAttribute("src", e.target.result);
            img.setAttribute("class", "card-img-top");
            if (check) {
                document.querySelector("#img").appendChild(img);
                check = false;
            }
        };

        reader.readAsDataURL(e.target.files[0]);
    };

    $(function () {
        bsCustomFileInput.init();
    });


</script>
</body>
</html>
