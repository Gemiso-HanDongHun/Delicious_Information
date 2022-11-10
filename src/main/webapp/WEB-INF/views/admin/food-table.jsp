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

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/adminLTE/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

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
                           <h1>DataTables</h1>
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

                           <div class="card">
                               <div class="card-header">
                                   <h3 class="card-title">DataTable with default features</h3>
                               </div>
                               <!-- /.card-header -->
                               <div class="card-body">
                                   <table id="example1" class="table table-bordered table-striped">
                                       <thead>
                                       <tr>
                                           <th>foodNo</th>
                                           <th>Name</th>
                                           <th>Kcal</th>

                                       </tr>
                                       </thead>
                                       <tbody>
                                       <c:forEach var="food" items="${foodList}">
                                       <tr>
                                           <td>${food.foodNo}</td>
                                           <td> <a href="/admin/detail/${food.foodNo}">${food.name}</a></td>
                                           <td>${food.kcal}</td>
                                       </tr>
                                       </c:forEach>

                                       </tbody>
                                       <tfoot>
                                       <tr>
                                           <th>foodNo</th>
                                           <th>Name</th>
                                           <th>Kcal</th>
                                       </tr>
                                       </tfoot>
                                   </table>
                                   <form>
                                       <div class="form-group">
                                           <label for="excel">Food Image</label>
                                           <div class="input-group">
                                               <div class="custom-file">
                                                   <input type="file" class="custom-file-input" id="excel" name="excel">
                                                   <label class="custom-file-label" for="excel">Choose file</label>
                                               </div>
                                           </div>
                                       </div>
                                   </form>
                               </div>
                               <!-- /.card-body -->
                               <div class="card-footer">
                                   <button type="button" class="btn btn-primary">등록</button>
                                   <button type="button" class="btn btn-primary">엑셀등록</button>
                               </div>
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
    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    const $button = document.querySelectorAll("button");
    $button[0].onclick = function(){
        location.href="/admin/write"
    };
    $button[1].onclick = function(){
        const $form =document.querySelector("form");
        $form.method="post";
        $form.action="/admin/write/excel"
        $form.encoding = "multipart/form-data";
        $form.submit();
    };
    $(function () {
        bsCustomFileInput.init();
    });
</script>
</body>
</html>
