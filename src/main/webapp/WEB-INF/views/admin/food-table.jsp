<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="include/food-list/food-list-css.jsp" %>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/adminLTE/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

    <!-- header -->
    <%@include file="./include/header.jsp" %>
    <!-- /header -->

    <!-- Main Sidebar Container -->
    <%@include file="./include/sidebar.jsp" %>
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
                                <h3 class="card-title">Food table</h3>
                                <form id="searchForm">
                                    <input type="search"style="float:right" class="form-control form-control-sm col-md-2" id="inputName" placeholder="검색창"
                                           name="keyword" value="${s.keyword}">
                                </form>


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
                                            <td><a href="/admin/detail/${food.foodNo}">${food.name}</a></td>
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
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 d-flex justify-content-center">
                                        <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                            <ul class="pagination">
                                                <c:if test="${pm.prev}">
                                                    <li class="paginate_button page-item previous" id="example1_previous">
                                                        <a class="page-link" href="/admin/food?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}">prev</a>
                                                    </li>
                                                </c:if>

                                                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                                                    <li class="paginate_button page-item " data-page-num="${n}">
                                                        <a class="page-link"
                                                           href="/admin/food?pageNum=${n}&amount=${pm.page.amount}&keyword=${s.keyword}">${n}</a>
                                                    </li>
                                                </c:forEach>

                                                <c:if test="${pm.next}">
                                                    <li class="paginate_button page-item next" id="example1_next">
                                                        <a class="page-link" href="/admin/food?pageNum=${pm.endPage + 1}&amount=${pm.page.amount}&keyword=${s.keyword}">next</a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->`
                            <div class="card-footer">
                                <button type="button" class="btn btn-primary">등록</button>
                                <button type="button" class="btn btn-primary" id="excel2" data-toggle="modal"
                                        data-target="#modal-default">엑셀로 등록
                                </button>
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

    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">엑셀 파일로 데이터 등록</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="excel">Excel File</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="excel" name="excel">
                                    <label class="custom-file-label" for="excel">Choose file</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="excelSubmit">데이터베이스 등록</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <!--footer -->
    <%@ include file="./include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="include/food-list/food-list-js.jsp" %>
<script src="/adminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script>
    function isExcel() {
        const $excelInput = document.querySelector("#excel").value;
        const pattern = /xlsx$|xls$/i;
        return $excelInput.match(pattern);

    }
</script>
<script>
    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    const $button = document.querySelectorAll("button");
    const $excelButton = document.querySelector("#excelSubmit");
    $button[0].onclick = function () {
        location.href = "/admin/write"
    };
    $button[1].onclick = e => {
        this.blur();
    }

    $excelButton.onclick = function () {
        if (isExcel()) {
            const $form = document.querySelector("form");
            $form.method = "post";
            $form.action = "/admin/write/excel"
            $form.encoding = "multipart/form-data";
            $form.submit();
        } else {
            alert("확장자명이 xlsx,xls만 등록 할 수 있어요.");
        }
        this.blur();
    };

    function appendPageActive() {

        // 현재 내가 보고 있는 페이지 넘버
        const curPageNum = '${pm.page.pageNum}';
        // console.log("현재페이지: ", curPageNum);

        // 페이지 li태그들을 전부 확인해서
        // 현재 위치한 페이지 넘버와 텍스트컨텐츠가 일치하는
        // li를 찾아서 class active 부여
        const $ul = document.querySelector('.pagination');

        for (let $li of [...$ul.children]) {
            if (curPageNum === $li.dataset.pageNum) {
                $li.classList.add('active');
                break;
            }
        }

    }




    $(function () {
        bsCustomFileInput.init();
        appendPageActive();
    });
</script>
</body>
</html>
