<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>MUNGME</title>

    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main-style.css">
    <link rel="stylesheet" href="/css/header.css">


    <script type="application/javascript" src="/js/jquery.min.js"></script>
    <script type="application/javascript" src="/js/jquery-ui.js"></script>
    <script type="application/javascript" src="/js/bootstrap.js"></script>
</head>
<body>
<!-- Split button -->
<div id="header" class="header" style="height: 212px;position: relative;">
    <div class="header-info-container">
        <div class="header-info"><span class="header-info-logo" style="margin-top: 27px;">MUNGME</span><span
                class="header-info-logout" style="position: absolute;right: 30px;font-size: 15px;"><a href="/logout"
                                                                                                      style="">로그아웃</a></span>
            <div class="header-info-login-info" style=""><span>대표운영자</span><span>(nenix)</span><span
                    style="padding-left: 56px;">MUNGME 회원정보</span></div>
        </div>
    </div>
    <div class="header-menu-container">
        <div class="header-menu">
            <%--<div class="header-btn" style="text-align: center"><div style="width: 86px;height: 86px;background: url('/imgs/header-store-btn-active.png')"></div><div class="header-btn-title" style="width: 100%; text-align: center;">매장관리</div></div><div class="header-menu-separator"></div>--%>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="width: calc(14.285714285714285% - 2px);"><img
                    src="/imgs/header-reserve-btn.png"
                    style="width: 46px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">예약관리</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-store-btn-active.png" style="">
                <div class="header-btn-title" style="width: 100%; text-align: center;">매장관리</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-client-btn.png"
                                                                     style="width: 50px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">고객관리</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-sales-btn.png"
                                                                     style="width: 38px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">입출금관리</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-cs-btn.png" style="width: 40px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">고객센터</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-statistics.png"
                                                                     style="width: 65px;margin-top: 6px;margin-left: 7px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">분석</div>
            </div>
            <div class="header-menu-separator"></div>
            <div class="header-btn" style="text-align: center;"><img src="/imgs/header-setting-btn.png"
                                                                     style="width: 45px;">
                <div class="header-btn-title" style="width: 100%; text-align: center;">설정</div>
            </div>
            <div class="header-menu-separator"></div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div id="left-menu-menu-container" class="left-menu-container col-xs-3">
            <div class="shop-name-container">
                <div class="shop-name">
                    순이네 펫 미용실
                </div>
                <div style="margin-top: 9px;width: 155px;height: 16px;font-family: 'Nanum Gothic';font-size: 14px;font-weight: normal;font-style: normal;font-stretch: normal;letter-spacing: -0.2px;color: rgba(189, 189, 189, 0.87);">
                    이용자 정보를 검색하세요.
                </div>
            </div>
            <div class="search-input-container">
                <input id="search-input" type="text"
                       style="width: 165px;height: 53.3px;object-fit: contain;background-color: #fbfbfb;box-shadow: 0 2px 4px 0 rgba(172, 172, 172, 0.5);border: 0;">
                <img src="/imgs/search-icon.png" alt="search"
                     style="height: 62px;object-fit: contain;position: absolute;right: -3px;top: -2px;">
            </div>
            <div id="left-nav" style="">
                <div class="left-nav-menu" style="">기본정보 관리<span
                        class="glyphicon glyphicon-chevron-right left-nav-menu-arrow"></span></div>
                <div class="left-nav-menu" style="">자원 관리<span
                        class="glyphicon glyphicon-chevron-right left-nav-menu-arrow"></span></div>
                <div class="left-nav-menu" style="">예약문자 설정<span
                        class="glyphicon glyphicon-chevron-right left-nav-menu-arrow"></span></div>
                <div class="left-nav-menu" style="">휴무 관리<span
                        class="glyphicon glyphicon-chevron-right left-nav-menu-arrow"></span></div>
            </div>
        </div>
        <div id="right-content-container" class="right-content-container col-xs-12">
            <div class="category-nav">
                <span class="category-name">홈<span
                        class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">매장관리<span
                    class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">기본정보관리</span>
            </div>
            <div class="sub-menu-container">
                <div class="sub-menu-name-container">
                    <div style="width: 4px;height: 18px;object-fit: contain;background-color: #ed5565;float: left;margin-top: 2px;margin-right: 15px;"></div>
                    기본정보 관리
                </div>
                <div class="sub-menu-description">
                    - 상점의 기초적인 상점명 및 관리자 정보를 입력 또는 인증할 수 있습니다.
                </div>
                <div class="input-table">
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td"></div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td"></div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                </div>
            </div>
            <div class="sub-menu-container">
                <div class="sub-menu-name-container">
                    <div style="width: 4px;height: 18px;object-fit: contain;background-color: #ed5565;float: left;margin-top: 2px;margin-right: 15px;"></div>
                    상점 사업자 정보 설정
                </div>
                <div class="sub-menu-description">
                    - 실제 운영될 상점 사업자 정보 및 대표 연락처를 입력할 수 있으며, 입력한 정보는 상점 화면에 노출됩니다.
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer"></div>
</body>
</html>