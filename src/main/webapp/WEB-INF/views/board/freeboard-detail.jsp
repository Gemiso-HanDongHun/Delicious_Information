<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../about/include/header_css.jsp" %>
    <link rel="stylesheet" href="/about/css/about.css">
    <!-- include summernote css/js -->

    <style>

        div.flex-column p.maintext {
              margin-left: 105px;
        }

        .boxed-page {
            height: 970px;
        }



        .boxed-page {
            min-height: 970px;
        }

        button#regist{
            background-color: #f4ede5;
            color: black;
            margin: 10px;
            /*border-radius: 2em;*/
            border: 1px solid #f4ede5;
            padding: 5px;
            background-color: #f4ede5;
            position:absolute;
            left:68%;
        }


        button.btn-info:hover{
            color: #f4ede5;
        }

        div.wrapper{
            width:100%;
            margin:auto;
            position:absolute;
            top: 25%;
        }
        section.wrapcontent{
            padding: 20px 20px 10px;
            border-radius: 1.5em;

            margin:auto;
            background:#f4ede5;
        }
        div.title{
            background: #f4ede5;
            padding-left: 0px;
        }
        #writeForm{
            padding: 0px;
        }
        h1{
            font-weight: 600;
            font-size: 24px;
        }

        .img-2 {
            width: 17%;
            height: 600px;
            position: absolute;
            left: 130px;
            top:25%
        }
        div.liParent li{
            text-align: center;
        }
        input.form-control:disabled {
          background: #FFFFFF;
        }

        textarea.form-control:disabled {
          background: #FFFFFF;
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
                    <div class="d-flex flex-lg-row flex-column liParent">
                        <li class="nav-item active d-flex justify-content-center ">
                            <a class="nav-link" href="/food-main">free <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="about" href="/food-about">info</a>
                        </li>

                        <li>
                            <p class="maintext">𝓕𝓻𝓮𝓮 𝓑𝓸𝓪𝓻𝓭</p>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="foodlist" href="/board/sboard/list">suggest</a>
                        </li>
                    </div>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">
    <section class="d-flex align-items-center flex-column col-5 wrapcontent">
    <div class="title col-12"><h1>자유 게시판</h1></div><br/>
    <form id="writeForm" class="col-12" action="/board/freeboard-write" method="post">
            <div class="form-group">
                <input type="text" id="title-input" class="form-control col-12" name="title" value="${fd.title}" disabled><br/>
                <input type="text" id="writer-input" class="form-control col-12" name="writer" value="${fd.writer}" disabled><br/>
                <textarea class="form-control col-12"rows="20" disabled>${fd.content}</textarea>
            </div>
    </form>

<%--    </section>--%>
<%--        <button type="button" class="btn btn-info" id="regist">등록</button>--%>
<%--    </div>--%>

<%--    <div class="col-sm-5 img-bg d-flex shadow align-items-center justify-content-center justify-content-md-end img-2"--%>
<%--         style="background-image: url(/resto/img/testi-bg.jpg);"> &lt;%&ndash; 이미지요소 &ndash;%&gt;--%>

<%--    </div>--%>
</div>
</body>
<script>
</script>
</html>