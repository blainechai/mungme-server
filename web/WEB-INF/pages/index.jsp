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
    <div class="header-info"><span class="header-info-logo" style="margin-top: 27px;">MUNGME</span><span class="header-info-logout" style="position: absolute;right: 30px;font-size: 15px;"><a href="/logout" style="">로그아웃</a></span>
        <div class="header-info-login-info" style=""><span>대표운영자</span><span>(nenix)</span><span style="padding-left: 56px;">MUNGME 회원정보</span></div>
    </div>
    <div class="header-menu">
        <%--<div class="header-btn" style="text-align: center"><div style="width: 86px;height: 86px;background: url('/imgs/header-store-btn-active.png')"></div><div class="header-btn-title" style="width: 100%; text-align: center;">매장관리</div></div><div class="header-menu-separator"></div>--%>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-reserve-btn.png" style="width: 46px;"><div class="header-btn-title" style="width: 100%; text-align: center;">예약관리</div><div class="header-menu-separator"></div></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-store-btn-active.png" style=""><div class="header-btn-title" style="width: 100%; text-align: center;">매장관리</div></div><div class="header-menu-separator"></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-client-btn.png" style="width: 50px;"><div class="header-btn-title" style="width: 100%; text-align: center;">고객관리</div></div><div class="header-menu-separator"></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-sales-btn.png" style="width: 38px;"><div class="header-btn-title" style="width: 100%; text-align: center;">입출금관리</div></div><div class="header-menu-separator"></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-cs-btn.png" style="width: 40px;"><div class="header-btn-title" style="width: 100%; text-align: center;">고객센터</div></div><div class="header-menu-separator"></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-statistics.png" style="width: 65px;margin-top: 6px;margin-left: 7px;"><div class="header-btn-title" style="width: 100%; text-align: center;">분석</div></div><div class="header-menu-separator"></div>
        <div class="header-btn" style="text-align: center;"><img src="/imgs/header-setting-btn.png" style="width: 45px;"><div class="header-btn-title" style="width: 100%; text-align: center;">설정</div></div><div class="header-menu-separator"></div>
    </div>
</div>

<div id="" class="content-wrapper"></div>
</body>
</html>