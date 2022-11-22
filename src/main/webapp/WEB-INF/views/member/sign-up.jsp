<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>

        div.flex-column p.maintext {
            margin-left: 105px;
        }

        li a.dropdown-to {
            width: 100px;
            margin-top: 27px;

        }

        .boxed-page {
            height: 970px;
        }

        .boxed-page .loginform {
            width: 30%;
            height: 690px;
            position: relative;
            margin: auto;
            top: 120px;
            border: 1px solid #f4ede5;
            box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .15) !important;
            border-radius: 1.5em;
            box-sizing: border-box;
            background: #f4ede5;
            padding: 20px
        }

        .boxed-page .loginform .login .title {
            width: 50%;
            margin: auto;

        }

        .boxed-page .loginform .login .title h1 {
            text-align: center;
            font-size: 1vw;
            margin-bottom: 30px;
        }

        div input {
            border-radius: 2em;
            padding-left: 20px;
        }


        #name {
            width: 90%;
            height: 40px;
            display: block;
            margin: 13px auto;

        }

        #account {
            width: 90%;
            height: 40px;
            display: block;
            margin: 15px auto;
        }

        #password {
            width: 90%;
            height: 40px;
            display: block;
            margin: 15px auto;
        }

        #man {
            margin-top: 12px;
            margin-left: 35px;
        }

        #woman {
            margin-left: 20px;
        }

        #phone {
            width: 90%;
            height: 40px;
            display: block;
            margin: 15px auto;
        }

        #email {
            width: 90%;
            height: 40px;
            display: block;
            margin: 15px auto;
        }

        .boxed-page .loginform #login, .boxed-page .loginform #signup-btn {
            width: 90%;
            height: 5vh;
            display: block;
            margin: 0 auto 15px auto;
            border: none;
            border-radius: 2em;
        }

        .boxed-page .loginform #login:hover, .boxed-page .loginform #signup-btn:hover {
            cursor: pointer;
            background: #bcbcbc;
            font-weight: 700;
            color: #ffffff;
        }

        .boxed-page .loginform p {
            width: 90%;
            display: block;
            margin: auto;
            text-align: center;
        }

        span.import{
            color: orangered;
        }




    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <%--            <a class="navbar-brand navbar-brand-center d-flex align-items-center p-0 only-mobile" href="/">--%>
            <%--                <img src="/resto/img/logo.png" alt="">--%>
            <%--            </a>--%>
            <%--            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--                <span class="lnr lnr-menu"></span>--%>
            <%--            </button>--%>

            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <li class="nav-item only-desktop">
                        <%--                        <a class="nav-link" id="side-nav-open" href="#">--%>
                        <%--                            <span class="lnr lnr-menu"></span>--%>
                        <%--                        </a>--%>
                    </li>
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/food-main">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">About</a>
                        </li>

                        <li>
                            <p class="maintext">𝓓𝓮𝓵𝓲𝓬𝓲𝓸𝓾𝓼 𝓘𝓷𝓯𝓸𝓻𝓶𝓪𝓽𝓲𝓸𝓷</p>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="foodlist" href="/food/list">List</a>
                        </li>

                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-to" href="/member/login">
                                로그인
                            </a>
                        </li>
                    </div>
                </ul>

                <ul class="navbar-nav d-flex justify-content-between">
                    <div class="d-flex flex-lg-row flex-column">

                    </div>
                    <li class="nav-item">

                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <form action="/member/sign-up" name="signup" id="signUpForm" method="post"
          style="margin-bottom: 0;">

        <section class="loginform">

            <div class="login">
                <div class="title">
                    <h1>회원가입</h1>
                </div>
                <p style="text-align: left; "><strong>이름<span class="import">(필수 정보)</span></strong></p>
                <input type="text" id="name" name="name" value="" placeholder="이름을 입력해주세요">

                <p style="text-align: left; "><strong>아이디<span class="import">(필수 정보)</span></strong></p>
                <input type="text" id="account" name="account"  placeholder="아이디를 입력해주세요">

                <p style="text-align: left; "><strong>비밀번호<span class="import">(필수 정보)</span></strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
                <input type="password" id="password" name="password" value="" placeholder="비밀번호를 입력해주세요">

                <p style="text-align: left; "><strong>휴대전화<span class="import">(필수 정보)</span></strong></p>
                <input type="text" id="phone" name="phone" value="" placeholder="핸드폰 번호를 입력해주세요">

                <p style="text-align: left;"><strong>이메일(선택)</strong></p>
                <input type="email" id="email" name="email" value="" placeholder="이메일을 입력해주세요">

                <p style="text-align: left; "><strong>성별<span class="import">(필수 정보)</span></strong></p>
                <td><input type="radio" id="man" name="gender" value="남" placeholder="">남</td>
                <td><input type="radio" id="woman" name="gender" value="여" placeholder="">여</td>
                </br></br>
            </div>

            <div class="loginbt">

                <button id="signup-btn">가입하기</button>

            </div>

    </form>

    </section>
</div>


<script>


    // 회원가입 폼 검증
    $(document).ready(function () {

        //입력값 검증 정규표현식
        const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
        const getPwCheck = RegExp(
            /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
        const getName = RegExp(/^[가-힣]+$/);
        const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

        // 입력값 검증 배열
        // 1: 아이디,  2: 비번, 3: 성별, 4: 이름, 5: 번호
        const checkArr = [false, false, false, false, false];

        // 1. 아이디 검증
        const $idInput = $('#user_id');

        $idInput.on('keyup', e => {

            // 아이디를 입력하지 않은 경우
            if ($idInput.val().trim() === '') {
                $idInput.css('border-color', 'red');
                $('#idChk').html('<b class="c-red">[아이디는 필수 정보입니다.]</b>');
                checkArr[0] = false;
            }

                // 아이디를 패턴에 맞지 않게 입력하였을 경우
                // test() 메서드는 정규표현식을 검증하여 입력값이 표현식과
            // 일치하면 true, 일치하지 않으면 false를 리턴
            else if (!getIdCheck.test($idInput.val())) {
                $idInput.css('border-color', 'red');
                $('#idChk').html('<b class="c-red">[영문, 숫자로 4~14자 사이로 작성하세요!]</b>');
                checkArr[0] = false;
            }

            // 아이디 중복 확인 검증
            else {

                fetch('/member/check?type=account&value=' + $idInput.val())   // 비동기로 type과 value를 받는다
                    .then(res => res.text())
                    .then(flag => {
                        console.log('flag:', flag);
                        if (flag === 'true') {
                            $idInput.css('border-color', 'red');
                            $('#idChk').html('<b class="c-red">[중복된 아이디입니다.]</b>');
                            checkArr[0] = false;
                        } else {
                            // 정상적으로 입력한 경우
                            $idInput.css('border-color', 'skyblue');
                            $('#idChk').html('<b class="c-blue">[사용가능한 아이디입니다.]</b>');
                            checkArr[0] = true;
                        }
                    });
            }

        }); //end id check event

        //2. 패스워드 입력값 검증.
        $('#password').on('keyup', function () {
            //비밀번호 공백 확인
            if ($("#password").val() === "") {
                $('#password').css('border-color', 'red');
                $('#pwChk').html('<b class="c-red">[패스워드는 필수정보!]</b>');
                checkArr[1] = false;
            }
            //비밀번호 유효성검사
            else if (!getPwCheck.test($("#password").val()) || $("#password").val().length < 8) {
                $('#password').css('border-color', 'red');
                $('#pwChk').html('<b class="c-red">[특수문자 포함 8자이상]</b>');
                checkArr[1] = false;
            } else {
                $('#password').css('border-color', 'skyblue');
                $('#pwChk').html('<b class="c-blue">[참 잘했어요]</b>');
                checkArr[1] = true;
            }
        });

        //패스워드 확인란 입력값 검증.
        $('#password_check').on('keyup', function () {
            //비밀번호 확인란 공백 확인
            if ($("#password_check").val() === "") {
                $('#password_check').css('border-color', 'red');
                $('#pwChk2').html('<b class="c-red">[패스워드확인은 필수정보!]</b>');
                checkArr[2] = false;
            }
            //비밀번호 확인란 유효성검사
            else if ($("#password").val() !== $("#password_check").val()) {
                $('#password_check').css('border-color', 'red');
                $('#pwChk2').html('<b class="c-red">[위에랑 똑같이!!]</b>');
                checkArr[2] = false;
            } else {
                $('#password_check').css('border-color', 'skyblue');
                $('#pwChk2').html('<b class="c-blue">[참 잘했어요]</b>');
                checkArr[2] = true;
            }
        });

        //이름 입력값 검증.
        $('#user_name').on('keyup', function () {
            //이름값 공백 확인
            if ($("#user_name").val() === "") {
                $('#user_name').css('border-color', 'red');
                $('#nameChk').html('<b class="c-red">[이름은 필수정보!]</b>');
                checkArr[3] = false;
            }
            //이름값 유효성검사
            else if (!getName.test($("#user_name").val())) {
                $('#user_name').css('border-color', 'red');
                $('#nameChk').html('<b class="c-red">[이름은 한글로 ~]</b>');
                checkArr[3] = false;
            } else {
                $('#user_name').css('border-color', 'skyblue');
                $('#nameChk').html('<b class="c-blue">[참 잘했어요]</b>');
                checkArr[3] = true;
            }

        });

        // 성별 입력값 검증


        //이메일 입력값 검증.
        const $emailInput = $('#user_email');
        $emailInput.on('keyup', function () {
            //이메일값 공백 확인
            if ($emailInput.val() == "") {
                $emailInput.css('border-color', 'red');
                $('#emailChk').html('<b class="c-red">[이메일은 필수정보에요!]</b>');
                checkArr[4] = false;
            }
            //이메일값 유효성검사
            else if (!getMail.test($emailInput.val())) {
                $emailInput.css('border-color', 'red');
                $('#emailChk').html('<b class="c-red">[이메일 형식 몰라?]</b>');
                checkArr[4] = false;
            } else {

                //이메일 중복확인 비동기 통신
                fetch('/member/check?type=email&value=' + $emailInput.val())
                    .then(res => res.text())
                    .then(flag => {
                        //console.log(flag);
                        if (flag === 'true') {
                            $emailInput.css('border-color', 'red');
                            $('#emailChk').html(
                                '<b class="c-red">[이메일이 중복되었습니다!]</b>');
                            checkArr[4] = false;
                        } else {
                            $emailInput.css('border-color', 'skyblue');
                            $('#emailChk').html(
                                '<b class="c-blue">[사용가능한 이메일입니다.]</b>'
                            );
                            checkArr[4] = true;
                        }
                    });
            }
        });

        // 회원가입 양식 서버로 전송하는 클릭 이벤트
        const $regForm = $('#signUpForm');

        $('#signup-btn').on('click', e => {

            if (!checkArr.includes(false)) {
                $regForm.submit();
            } else {
                alert('입력란을 다시 확인하세요!');
            }
        });

    });
</script>


</body>
</html>
