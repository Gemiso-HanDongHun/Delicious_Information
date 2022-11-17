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
                        <a class="nav-link" id="about" href="/food-about">About</a>
                    </li>

                    <li>
                        <p>𝓕𝓸𝓸𝓭 𝓛𝓲𝓼𝓽</p>
                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            영양소
                        </a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <%--                                <a class="dropdown-item" href="#" onclick="location.href='/food/nutrient/${fn.food.foodNo}'">남자</a>--%>
                            <a class="dropdown-item" href="#"
                               onclick="location.href='/food/nutrient2/${fn.food.foodNo}'">여자</a>
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
    