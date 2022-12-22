<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>

        #navbar-header .navbar-nav .dropdown-menu {
            border: 2px solid lightgrey;
            box-shadow: none;
        }

        @font-face {
            font-family: 'MaplestoryOTFBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        div li {
            font-family: 'MaplestoryOTFBold';
            font-weight: 800;
        }

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

        .boxed-page .signupform {
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

        .boxed-page .signupform .signup .title {
            width: 50%;
            margin: auto;

        }

        .boxed-page .signupform .signup .title h1 {
            text-align: center;
            font-size: 1vw;
            margin-bottom: 30px;
        }

        div input {
            border-radius: 2em;
            padding-left: 20px;
        }


        #user_name {
            width: 90%;
            height: 40px;
            display: block;
            margin: 13px auto;

        }

        #user_id {
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

        #password_check {
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

        .boxed-page .signupform #signup, .boxed-page .signupform #signup-btn {
            width: 90%;
            height: 5vh;
            display: block;
            margin: 0 auto 15px auto;
            border: none;
            border-radius: 2em;
        }

        .boxed-page .signupform #signup:hover, .boxed-page .signupform #signup-btn:hover {
            cursor: pointer;
            background: #bcbcbc;
            font-weight: 700;
            color: #ffffff;
        }

        .boxed-page .signupform p {
            width: 90%;
            display: block;
            margin: auto;
            text-align: center;
        }

        span.import {
            color: orangered;
        }

        h1 {
            font-family: 'MaplestoryOTFBold';
        }


    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">
            <div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-between">
                    <li class="nav-item only-desktop">
                    </li>
                    <div class="d-flex flex-lg-row flex-column">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
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
                            <a class="nav-link dropdown-to" href="/member/sign-in">
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

    <form id="signupForm">
        <section class="signupform">

            <div class="signup">
                <div class="title">
                    <h1>회원가입</h1>
                </div>
                <p style="text-align: left; "><strong>이름<span class="import" id="nameChk"></span></strong></p>
                <input type="text" id="user_name" name="name" maxlength="10" value=""
                       placeholder="이름을 입력해주세요">

                <p style="text-align: left; "><strong>아이디<span class="import" id="idChk"></span></strong></p>
                <input type="text" id="user_id" name="account" placeholder="아이디를 입력해주세요">

                <p style="text-align: left; "><strong>비밀번호<span class="import" id="pwChk"></span></strong></p>
                <input type="password" minlength="10" id="password" name="password" value="" placeholder="비밀번호를 입력해주세요">

                <p style="text-align: left; "><strong>비밀번호 확인<span class="import" id="pwChk2"></span></strong></p>
                <input type="password" id="password_check" name="phone" value="" placeholder="핸드폰 번호를 입력해주세요">

                <p style="text-align: left;"><strong>이메일<span class="import" id="emailChk"></span></strong></p>
                <input type="email" id="email" maxlength="20" name="email" value="" placeholder="이메일을 입력해주세요">

                <p style="text-align: left; "><strong>성별<span class="import" id="genderChk"></span></strong></p>
                <input type="radio" id="man" name="gender" value="남" checked>남
                <input type="radio" id="woman" name="gender" value="여">여
                </br></br>
            </div>

            <div class="signupbt">
                <button type="button" id="signup-btn"><strong>가입하기</strong></button>
            </div>

        </section>
    </form>
</div>

<!-- jQuery -->
<script src="/adminLTE/plugins/jquery/jquery.min.js"></script>

<script>

    // 회원가입 폼 검증
    $(document).ready(function () {

        //입력값 검증 정규표현식
        // const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,14}$/);
        const getIdCheck = RegExp(/^[a-zA-Z0-9]{1,15}$/);
        const getIdCheck2 = RegExp(/[^0-9]/);
        const getPwCheck = RegExp(
            /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
        const getName = RegExp(/^[가-힣a-zA-Z]+$/);
        const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);


        // 입력값 검증 배열
        // 1: 이름, 4: 아이디, 2: 비번, 3: 비번확인, 5: 이메일
        const checkArr = [false, false, false, false, false];

        // 1. 아이디 검증
        const $idInput = $('#user_id');

        $idInput.on('keyup', e => {

            // 아이디를 입력하지 않은 경우
            if ($idInput.val().trim() === '') {
                $idInput.css('border-color', 'orangered');
                $('#idChk').html('<b class="c-red">(필수 정보)</b>');
                checkArr[0] = false;
            }

                // 아이디를 패턴에 맞지 않게 입력하였을 경우
                // test() 메서드는 정규표현식을 검증하여 입력값이 표현식과
            // 일치하면 true, 일치하지 않으면 false를 리턴
            else if (!getIdCheck.test($idInput.val())) {
                $idInput.css('border-color', 'red');
                $('#idChk').html('<b class="c-red">(영문+숫자로 작성)</b>');
                checkArr[0] = false;
            } else if (!getIdCheck2.test($idInput.val())) {
                $idInput.css('border-color', 'red');
                $('#idChk').html('<b class="c-red">(영문+숫자로 작성)</b>');
                checkArr[0] = false;
            }

            // 아이디 중복 확인 검증
            else {

                fetch('/member/check?type=account&value=' + $idInput.val())   // 비동기로 type과 value를 받는다
                    .then(res => res.text())
                    .then(flag => {
                        console.log('flag:', flag);
                        if (flag === 'true') {
                            $idInput.css('border-color', 'orangered');
                            $('#idChk').html('<b class="c-red">(사용중인 아이디)</b>');
                            checkArr[0] = false;
                        } else {
                            // 정상적으로 입력한 경우
                            $idInput.css('border-color', 'black');
                            $('#idChk').html('<b class="c-blue">(사용가능)</b>');
                            checkArr[0] = true;

                        }

                        console.log("아이디 " + checkArr[0]);
                    });
            }

        }); //end id check event

        //2. 패스워드 입력값 검증.
        $('#password').on('keyup', function () {
            //비밀번호 공백 확인
            if ($("#password").val() === "") {
                $('#password').css('border-color', 'orangered');
                $('#pwChk').html('<b class="c-red">(필수 정보)</b>');
                checkArr[1] = false;
            }
                //비밀번호 유효성검사
                // else if (!getPwCheck.test($("#password").val()) || $("#password").val().length < 8) {
                //     $('#password').css('border-color', 'red');
                //     $('#pwChk').html('<b class="c-red">[특수문자 포함 8자이상]</b>');
                //     checkArr[1] = false;
            // }

            else {
                $('#password').css('border-color', 'black');
                $('#pwChk').html('<b class="c-blue"></b>');
                checkArr[1] = true;

            }

            console.log("비밀번호 입력 " + checkArr[1]);

        });

        //패스워드 확인란 입력값 검증.
        $('#password_check').on('keyup', function () {
            //비밀번호 확인란 공백 확인
            if ($("#password_check").val() === "") {
                $('#password_check').css('border-color', 'orangered');
                $('#pwChk2').html('<b class="c-red">(필수 정보)</b>');
                checkArr[2] = false;
            }

            //비밀번호 확인란 유효성검사
            else if ($("#password").val() !== $("#password_check").val()) {
                $('#password_check').css('border-color', 'orangered');
                $('#pwChk2').html('<b class="c-red">(비밀번호 불일치)</b>');
                checkArr[2] = false;

            } else {
                $('#password_check').css('border-color', 'black');
                $('#pwChk2').html('<b class="c-blue">(일치)</b>');
                checkArr[2] = true;
            }

            console.log("비밀번호 중복 " + checkArr[2]);
        });


        //이름 입력값 검증.
        $('#user_name').on('keyup', function () {
            //이름값 공백 확인
            if ($("#user_name").val() === "") {
                $('#user_name').css('border-color', 'red');
                $('#nameChk').html('<b class="c-red">(필수 정보)</b>');
                checkArr[3] = false;
            }

            // 이름값 유효성검사
            else if (!getName.test($("#user_name").val())) {
                $('#user_name').css('border-color', 'red');
                $('#nameChk').html('<b class="c-red">(한글과 영문 대소문자)</b>');

                checkArr[3] = false;
            } else {
                $('#user_name').css('border-color', 'black');
                $('#nameChk').html('<b class="c-blue"></b>');
                checkArr[3] = true;

            }

            console.log("이름 " + checkArr[3]);

        });

        //이메일 입력값 검증.
        const $emailInput = $('#email');
        $emailInput.on('keyup', function () {

            // 이메일값 공백 확인
            if ($emailInput.val() == "") {
                $emailInput.css('border-color', 'red');
                // $('#emailChk').html('<b class="c-red"></b>');
                $('#emailChk').html('<b class="c-red">(필수 정보)</b>');
                checkArr[4] = false;
            }



            //이메일값 유효성검사
            else if (!getMail.test($("#email").val())) {
                $emailInput.css('border-color', 'red');

                $('#emailChk').html('<b class="c-red">(이메일 형식 오류)</b>');
                checkArr[4] = false;
            } else {
                // 정상적으로 입력한 경우
                $idInput.css('border-color', 'black');
                $('#emailChk').html('<b class="c-blue"></b>');
                checkArr[4] = true;

            }


            // else {
            //
            //     //이메일 중복확인 비동기 통신
            //     fetch('/member/check?type=email&value=' + $emailInput.val())
            //         .then(res => res.text())
            //         .then(flag => {
            //             //console.log(flag);
            //             if (flag === 'true') {
            //                 $emailInput.css('border-color', 'orangered');
            //                 $('#emailChk').html(
            //                     '<b class="c-red">(이메일이 중복)</b>');
            //                 checkArr[3] = false;
            //             } else {
            //                 $emailInput.css('border-color', 'black');
            //                 $('#emailChk').html(
            //                     '<b class="c-blue"></b>'
            //                 );
            //                 checkArr[3] = true;
            //             }
            //         });
            // }
        });


        // 회원가입 양식 서버로 전송하는 클릭 이벤트
        const $regForm = document.querySelector("#signupForm")

        $('#signup-btn').on('click', e => {

            if (!checkArr.includes(false)) {
                $regForm.action = "/member/sign-up";
                $regForm.method = "post";
                $regForm.submit();
                // $regForm.submit();
            } else {
                alert('입력형식을 준수해 주세요');
            }
        });

    }); // end jQuery

</script>

</body>
</html>