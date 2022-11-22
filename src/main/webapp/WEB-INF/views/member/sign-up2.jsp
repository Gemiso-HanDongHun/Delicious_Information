<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <%--    <%@ include file="./include/static-head.jsp" %>--%>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">

    <style>
        .wrap {
            margin: 200px auto;
        }

        .c-red {
            color: #e00;
        }

        .c-blue {
            color: rgb(25, 236, 120);
        }
    </style>
</head>

<body>

<%--<%@ include file="./include/header.jsp" %>--%>
<%@include file="../about/include/side_nav.jsp" %>

<div class="container wrap">
    <div class="row">
        <div class="offset-md-2 col-md-4">
            <div class="card" style="width:200%;">
                <div class="card-header text-white" style="background: #343A40;">
                    <h2><span style="color: gray;">Delicious Nutrient</span> 회원 가입</h2>
                </div>
                <div class="card-body">


                    <form action="/member/sign-up" name="signup" id="signUpForm" method="post"
                          style="margin-bottom: 0;">


                        <table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
                            <tr>
                                <td style="text-align: left">
                                    <p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
                                        <span id="idChk"></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="text" name="account" id="user_id"
                                           class="form-control tooltipstered" maxlength="14" required="required"
                                           aria-required="true"
                                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                           placeholder="숫자와 영어로 4-14자">
                                </td>

                            </tr>

                            <tr>
                                <td style="text-align: left">
                                    <p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="password" size="17" maxlength="20" id="password" name="password"
                                           class="form-control tooltipstered" maxlength="20" required="required"
                                           aria-required="true"
                                           style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                                           placeholder="영문과 특수문자를 포함한 최소 8자"></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <p><strong>성별</strong>&nbsp;&nbsp;&nbsp;<span id="genderchk"></span>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="gender" value="남">남
                                    <%--                                    <input type="radio" size="17" maxlength="20" id="checkbox"--%>
                                    <%--                                           name="gender" class="form-control tooltipstered" maxlength="20"--%>
                                    <%--                                           required="required" aria-required="true"--%>
                                    <%--                                           style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"--%>
                                    <%--                                           placeholder="성별입력.">--%>
                                </td>

                                <td>
                                    <input type="radio" name="gender" value="여">여
                                    <%--                                    <input type="radio" size="17" maxlength="20" id="checkbox"--%>
                                    <%--                                           name="gender" class="form-control tooltipstered" maxlength="20"--%>
                                    <%--                                           required="required" aria-required="true"--%>
                                    <%--                                           style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"--%>
                                    <%--                                           placeholder="성별입력.">--%>
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align: left">
                                    <p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="text" name="name" id="user_name" class="form-control tooltipstered"
                                           maxlength="6" required="required" aria-required="true"
                                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                           placeholder="한글로 최대 6자"></td>
                            </tr>

                            <tr>
                                <td style="text-align: left">
                                    <p><strong>번호를 입력해주세요</strong>&nbsp;&nbsp;&nbsp;<span id="phonecheck"></span></p>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="text" name="phone" id="user_number" class="form-control tooltipstered"
                                           maxlength="13" required="required" aria-required="true"
                                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                           placeholder="한글로 최대 6자"></td>
                            </tr>


                            <tr>
                                <td style="text-align: left">
                                    <p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="email" name="email" id="user_email"
                                           class="form-control tooltipstered" required="required" aria-required="true"
                                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                                           placeholder="ex) abc@mvc.com"></td>
                            </tr>

                            <tr>
                                <td style="padding-top: 10px; text-align: center">
                                    <p><strong>회원가입을 하면 음식 추천정보를 이용할 수 있습니다~!</strong></p>
                                </td>
                            </tr>


                            <tr>

                                <button value="회원가입" class="btn form-control tooltipstered"
                                        style="width: 40%; text-align: center; colspand : 2;">회원가입
                                </button>
                                <%--                                <td style="width: 40%; text-align: center; colspan: 2;">--%>
                                <%--                                    <input type="button" value="회원가입" class="btn form-control tooltipstered"--%>
                                <%--                                           id="signup-btn"--%>
                                <%--                                           style="background: pink; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">--%>
                                <%--                                </td>--%>
                            </tr>

                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
+

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