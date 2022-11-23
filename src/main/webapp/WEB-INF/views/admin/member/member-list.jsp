<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DelicousInfo-admin</title>

    <%@include file="../include/food-list/food-list-css.jsp" %>
    <link rel="stylesheet" href="/adminLte/plugins/select2/css/select2.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake" src="/adminLTE/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

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
                        <h1>DataTables</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/admin/">Home</a></li>
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
                                <h3 class="card-title">Member table</h3>
                                <form class="d-flex flex-row justify-content-end" id="searchForm">
                                        <select class="form-control col-md-1" style="margin-right:10px ;" name="type" id="search-type" >
                                            <option  value="account" >Account</option>
                                            <option value="name">name</option>
                                            <option value="grade">grade</option>
                                            <option value="email">email</option>
                                            <option value="gender">gender</option>
                                        </select>
                                    <input type="search"style="float:right" class="form-control  col-md-3" id="inputName" placeholder="검색창"
                                           name="keyword" value="${s.keyword}">
                                </form>


                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Account</th>
                                        <th>name</th>
                                        <th>grade</th>
                                        <th>email</th>
                                        <th>gender</th>
                                        <th width="12%">button</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="member" items="${memberList}">

                                            <tr>
                                                <td><a href="/admin/member/detail/${member.account}">${member.account}</a></td>
                                                <td>${member.name}</td>
                                                <td>${member.grade}</td>
                                                <td>${member.email}</td>
                                                <td>${member.gender}</td>
                                                <td align="center">
                                                    <button class="btn btn-info" data-toggle="modal"
                                                            data-target="#modal-modify" onclick="modifyModalInitialize('${member.account}')">등급변경</button>
                                                    <button class="btn btn-danger" onclick="removeModalInitialize('${member.account}')" data-toggle="modal"
                                                            data-target="#modal-remove">삭제
                                                    </button>
                                                </td>
                                            </tr>

                                    </c:forEach>

                                    </tbody>

                                </table>
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 d-flex justify-content-center">
                                        <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                            <ul class="pagination">
                                                <c:if test="${pm.prev}">
                                                    <li class="paginate_button page-item previous" id="example1_previous">
                                                        <a class="page-link" href="/admin/member/list?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}&type=${s.type}">prev</a>
                                                    </li>
                                                </c:if>

                                                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                                                    <li class="paginate_button page-item " data-page-num="${n}">
                                                        <a class="page-link"
                                                           href="/admin/member/list?pageNum=${n}&amount=${pm.page.amount}&keyword=${s.keyword}&type=${s.type}">${n}</a>
                                                    </li>
                                                </c:forEach>

                                                <c:if test="${pm.next}">
                                                    <li class="paginate_button page-item next" id="example1_next">
                                                        <a class="page-link" href="/admin/member/list?pageNum=${pm.endPage + 1}&amount=${pm.page.amount}&keyword=${s.keyword}&type=${s.type}">next</a>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->`
                            <div class="card-footer">
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
    <div class="modal fade" id="modal-modify">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">회원 등급 변경</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="grade-modify-form">
                        <div class="form-group">
                            <input name="account" type="hidden" class="modal-input form-control" id="modify-input">
                            <label for="grade-type">등급 변경</label>
                            <select class="form-control col-md-12"   name="grade" id="grade-type" >
                                <option value="silver">silver</option>
                                <option value="gold">gold</option>
                                <option value="vip">vip</option>
                                <option value="admin">admin</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-info" id="grade-modify">등급 변경</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <div class="modal fade" id="modal-remove">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">회원 삭제</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="remove-form">
                        <div class="form-group">
                            <label for="remove-input">회원 account</label>
                            <input class="modal-input form-control" name="account" type="text" id="remove-input" >
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" id="remove">회원 삭제</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->



    <!--footer -->
    <%@ include file="../include/footer.jsp" %>
    <!--/footer-->
</div>
<%@ include file="../include/food-list/food-list-js.jsp" %>
<script src="/adminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="/adminLTE/plugins/select2/js/select2.full.min.js"></script>

<script>
    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    const $removeButton = document.querySelector("#remove");
    const $modifyButton = document.querySelector("#grade-modify");

    $modifyButton.onclick=e=>{
        const $modifyForm = document.getElementById("grade-modify-form");
        if(confirm("정말 등급을 변경하시겠씁니까?")) {
            $modifyForm.action = "/admin/member/modify";
            $modifyForm.method = "post";
            $modifyForm.submit();
        }

    }

    $removeButton.onclick=e=>{
        const $removeForm = document.getElementById("remove-form");
        if(confirm("정말 회원정보를 삭제하시겠습니까?" +
            "\n한번삭제하시면 복구가 불가능 합니다.")) {
            $removeForm.action = "/admin/member/remove";
            $removeForm.method = "post";
            $removeForm.submit();
        }

    };


    function modifyModalInitialize(account){
        const $input = document.querySelector("#modify-input")
        $input.value=account;
    }
    function removeModalInitialize(account){
        const $input = document.querySelector("#remove-input")
        $input.value=account;
    }



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
    function fixSearchOption() {
        const $select = document.getElementById('search-type');

        for (let $opt of [...$select.children]) {
            if ($opt.value === '${s.type}') {
                $opt.setAttribute('selected', 'selected');
                break;
            }
        }
    }





    $(function () {
        bsCustomFileInput.init();
        appendPageActive();
        fixSearchOption();
    });
</script>
</body>
</html>
