<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="include/food-list/food-list-css.jsp"%>
    <style>
        label#foodNo{
            font-size: 20px;
        }
    </style>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">



    <!-- header -->
    <%@include file="./include/header.jsp"%>
    <!-- /header -->

    <!-- Main Sidebar Container -->
   <%@include file="./include/sidebar.jsp"%>
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
                                       <div class="form-group">
                                           <label id="foodNo">Food No : ${food.foodNo}</label>
                                       </div>
                                       <div class="form-group">
                                           <label for="foodName">Food Name</label>
                                           <input type="text" class="form-control" name="name" id="foodName" value="${food.name}" >
                                       </div>
                                       <div class="form-group">
                                           <label for="foodKcal">Food Kcal</label>
                                           <input type="number" class="form-control" name="kcal" id="foodKcal" value="${food.kcal}">
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
                                                           <img class="card-img-top" src="/admin/loadFile?foodNo=${food.foodNo}" alt="foodImg">
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
    <%@ include file="./include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="./include/food-list/food-list-js.jsp"%>
<script src="/adminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script>
    const $form = document.querySelector("form");
    const $button = document.querySelectorAll("button");
    const $input = document.querySelectorAll("input");
    function isValidate(){
        if($input[0].value.trim()===''|| $input[1].value.trim()===''){
            alert("foodName과 kcal는 필수값입니다")
            return false;
        }
        return true;
    }
    $button[0].onclick = function(){
        if(confirm("아래와 같이 수정 하시겠습니까?\n"+
        "foodName : " +$input[0].value+"\n"+
        "kcal : "+$input[1].value)) {
            if(isValidate()){
                $form.action="/admin/food/modify/${food.foodNo}"
                $form.method="post"
                $form.encoding="multipart/form-data";
                $form.submit();
            }
        }
    };

    $button[1].onclick = function(){
        if(confirm("정말로 삭제 하시겠습니까?")){
            $form.action="/admin/food/delete/${food.foodNo}"
            $form.method="post"
            $form.submit();
        }
    };
    $(function () {
        bsCustomFileInput.init();
    });

</script>
</body>
</html>
