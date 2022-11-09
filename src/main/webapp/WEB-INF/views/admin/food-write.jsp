<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="include/food-list/food-list-css.jsp"%>

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
                                           <label for="foodName">Food Name</label>
                                           <input type="text" class="form-control" name="name" id="foodName">
                                       </div>
                                       <div class="form-group">
                                           <label for="foodKcal">Food Kcal</label>
                                           <input type="number" class="form-control" name="kcal" id="foodKcal">
                                       </div>
                                       <div class="form-group">
                                           <label for="file">Food Image</label>
                                           <div class="input-group">
                                               <div class="custom-file">
                                                   <input type="file" class="custom-file-input" id="file" name="file" >
                                                   <label class="custom-file-label" for="file">Choose file</label>
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
    <%@ include file="./include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="include/food-list/food-list-js.jsp"%>
<script src="/adminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script>
    const $button = document.querySelector("button");
    $button.onclick = function(){
        const $form = document.querySelector("form");
        $form.method="post";
        $form.action="/admin/write";
        $form.encoding="multipart/form-data";
        $form.submit();
    };
    $(function () {
        bsCustomFileInput.init();
    });
</script>
</body>
</html>
