<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                        <a class="nav-link" id="about" href="/food/list">List</a>
                    </li>

                    <li>
                        <p>𝓝𝓾𝓽𝓻𝓲𝓮𝓷𝓽 𝓛𝓲𝓼𝓽</p>
                    </li>

                    <li class="nav-item dropdown" id="nav-li">
                        <a class="nav-link dropdown-toggle" d="navibarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            영양소
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/carb'">탄수화물</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/protein'">단백질</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/fat'">지방</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/na'">나트륨</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/vitaminA'">비타민A</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/vitaminC'">비타민C</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/vitaminE'">비타민E</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/dha'">오메가3</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/ca'">칼슘</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/fe'">철분</a>
                            <a class="dropdown-item"
                               onclick="location.href='/food/about/mg'">마그네슘</a>
                        </div>

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
    