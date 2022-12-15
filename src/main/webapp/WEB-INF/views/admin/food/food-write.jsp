<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="../include/food-list/food-list-css.jsp" %>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <%--
        <!-- Preloader -->
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
                                        <div class="col-4">
                                            <div class="form-group">
                                                <label for="foodName">Food Name</label>
                                                <input type="text" class="form-control" name="name" id="foodName">
                                            </div>

                                            <div class="form-group">
                                                <label for="carbohydrate">탄수화물</label>
                                                <input type="number" class="form-control" name="carbohydrate" id="carbohydrate">
                                            </div>
                                            <div class="form-group">
                                                <label for="protein">단백질</label>
                                                <input type="number" class="form-control" name="protein" id="protein">
                                            </div>
                                            <div class="form-group">
                                                <label for="fat">지방</label>
                                                <input type="number" class="form-control" name="fat" id="fat">
                                            </div>
                                            <div class="form-group">
                                                <label for="omega">omega</label>
                                                <input type="number" class="form-control" name="omega" id="omega">
                                            </div>



                                        </div>

                                        <div class="col-4">

                                            <div class="form-group">
                                                <label for="foodKcal">Food Kcal</label>
                                                <input type="number" class="form-control" name="kcal" id="foodKcal">
                                            </div>
                                            <div class="form-group">
                                                <label for="vitaminA">vitaminA</label>
                                                <input type="number" class="form-control" name="vitaminA" id="vitaminA">
                                            </div>

                                            <div class="form-group">
                                                <label for="vitaminC">vitaminC</label>
                                                <input type="number" class="form-control" name="vitaminC" id="vitaminC">
                                            </div>
                                            <div class="form-group">
                                                <label for="vitaminE">vitaminE</label>
                                                <input type="number" class="form-control" name="vitaminE" id="vitaminE">
                                            </div>
                                            <div class="form-group">
                                                <label for="calcium">calcium</label>
                                                <input type="number" class="form-control" name="calcium" id="calcium">
                                            </div>

                                        </div>

                                        <div class="col-4">
                                            <div class="form-group">
                                                <label for="omega">1회 제공량</label>
                                                <input type="number" class="form-control" name="servingSize" id="servingSize">
                                            </div>

                                            <div class="form-group">
                                                <label for="iron">iron</label>
                                                <input type="number" class="form-control" name="iron" id="iron">
                                            </div>
                                            <div class="form-group">
                                                <label for="magnesium">magnesium</label>
                                                <input type="number" class="form-control" name="magnesium" id="magnesium">
                                            </div>
                                            <div class="form-group">
                                                <label for="sodium">sodium</label>
                                                <input type="number" class="form-control" name="sodium" id="sodium">
                                            </div>




                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="file">Food Image</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="file" name="file">
                                                <label class="custom-file-label" for="file">Choose file</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card card-success">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12 col-lg-6 col-xl-4" style="margin:auto;">
                                                    <div class="card mb-2 bg-gradient-dark" id="img">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-body -->


                                <div class="card-footer">
                                    <button type="button" class="btn btn-primary">음식 등록</button>
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
    const $button = document.querySelector("button");
    const $file  = document.querySelector("#file")
    const $input = document.querySelectorAll("input");
    const $servingSize = document.querySelector("#servingSize");
    const $foodName = document.querySelector("#foodName");
    const $foodKcal = document.querySelector("#foodKcal");
    const img = document.createElement("img");
    let check = true;


    function isValidate() {
        if ($foodName.value.trim() === '' ||  $foodKcal.value.trim() === ''|| $servingSize.value.trim() === '') {
            alert("foodName과 kcal,1회제공량은 필수값입니다")
            return false;
        }
        return true;
    }
    function isImage(){
        const pattern = /jpg$|gif$|png$/i;
        return $file.value.match(pattern);

    }
    $button.onclick = function () {

        if(isValidate()){
            const $form = document.querySelector("form");
            $form.method = "post";
            $form.action = "/admin/food/write";
            $form.encoding = "multipart/form-data";
            $form.submit();
        }

    };
    $file.onchange = function (e) {
        if(isImage()){
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
        }else{
            alert("jpg,gif,png파일만 등록 할 수 있어요.");
            $file.value="";
            document.querySelector("#img").removeChild(img);
            check=true;
        }
    };
    $(function () {
        bsCustomFileInput.init();
    });
</script>
</body>
</html>
