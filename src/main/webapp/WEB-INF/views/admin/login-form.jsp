<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>AdminLTE 3 | Validation Form</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/adminLTE/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/adminLTE/dist/css/adminlte.min.css">

	<style>
		div.wrapper{
			width:30%;
			margin:auto;
		}
		section.content{
			margin-top: 200px;
		}
		span{
			color:tomato;
			font-size:10px;
			font-weight:bold;
		}
	</style>
</head>
<body <%--class="hold-transition sidebar-mini"--%>>
<div class="wrapper">
		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<!-- left column -->
					<div class="col-md-12">
						<!-- jquery validation -->
						<div class="card card-primary">
							<div class="card-header">
								<h1 class="card-title">Admin Login</h1>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form>
								<div class="card-body">
									<div class="form-group">
										<label for="userID">ID</label>
										<input type="text" name="account" class="form-control" id="userID" placeholder="Enter ID">
									</div>
									<div class="form-group">
										<label for="password">Password</label>
										<input type="password" name="password" class="form-control" id="password" placeholder="Password">
									</div>
								</div>
								<!-- /.card-body -->
								<div class="card-footer">
									<button type="button" class="btn btn-primary">Login</button>
								</div>
							</form>
						</div>
						<!-- /.card -->
					</div>
				</div>
				<!-- /.row -->
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->

</div>
<script>
	const $id = document.querySelector("#userID");
	const $pw = document.querySelector("#password");
	const $loginButton = document.querySelector("button[type=button]");
	const $form = document.querySelector("form");

	function isValiDate(){


		if($id.value.trim()=="") {
			alert("아이디를 입력해주세요");
            return false;
		}else if($pw.value.trim()==""){
            alert("비밀번호를 입력해주세요");
            return false;
        }

		return true;

	}



	$loginButton.addEventListener("click", function () {
		if(isValiDate()){
			$form.action="/admin/login";
			$form.method="post";
            $form.submit();
		}
	});

	$pw.addEventListener("keydown",e => {
		if(e.keyCode==13){
			if(isValiDate()){
				$form.action="/admin/login";
				$form.method="post";
				$form.submit();
			}
		}
	});

	const loginMsg = '${loginMsg}';
	if (loginMsg === 'FAIL') {
		alert('잘못된 정보를 입력하셨습니다.');
	}
	const warning = '${message}';
	console.log('message:', warning);
	if (warning === 'no-login') {
		alert('로그인 후 사용할 수 있습니다.');
	}


</script>

</body>
</html>
