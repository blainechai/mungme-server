<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>MUNGME</title>

    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/main-style.css">
    <link rel="stylesheet" href="/css/header.css">


    <script type="application/javascript" src="/js/jquery.min.js"></script>
    <script type="application/javascript" src="/js/jquery-ui.js"></script>
    <script type="application/javascript" src="/js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="../header.jsp" flush="false"/>

<div class="container">
    <div class="row">
        <jsp:include page="reservation-left-menu.jsp" flush="false"/>
        <div id="right-content-container" class="right-content-container col-xs-12">
            <div class="category-nav">
                <span class="category-name">홈<span
                        class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">예약관리<span
                    class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">예약내역</span>
            </div>
            <div class="sub-menu-container">
                <div class="sub-menu-name-container">
                    <div style="width: 4px;height: 18px;object-fit: contain;background-color: #ed5565;float: left;margin-top: 2px;margin-right: 15px;"></div>
                    예약 관리
                </div>
                <div class="sub-menu-name-container" style="height: 65px;padding-top: 10px;margin-bottom: 31px;">
                    <div class="radio-btn-container" style="position: absolute;">
                        <button class="reservation-reserve-menu-btn calendar-btn active">캘린더</button>
                        <button class="reservation-reserve-menu-btn book-list-btn">현황</button>
                    </div>
                    <div style="position: absolute; right: 0;">
                        <button class="reservation-reserve-dropdown-btn customer-set-artist-tn"><span>담당 미용사</span><span
                                class="custom-caret-down"></span></button>
                        <button class="reservation-reserve-dropdown-btn customer-show-num-btn"><span>10개씩 보기</span><span
                                class="custom-caret-down"></span></button>
                    </div>
                </div>
                <div class="calendar-container">
                    <div style="position: absolute;right: 0;">
                        <span class="green-circle"></span><span class="blue-circle"></span><span
                            class="orange-circle"></span><span class="red-circle"></span>

                    </div>
                    <div class="calender-period-btn-container">
                        <button class="calender-period-btn period-month active">월별</button>
                        <button class="calender-period-btn period-week">주별</button>
                        <button class="calender-period-btn period-day">일별</button>
                    </div>
                    <div class="calendar-info">월별 캘린더, 휴무, 예약현황</div>
                    <div class="calendar" style="height: 500px;background: #fff;">
                        <div class="calendar-header" style="display: inline-block;">
                            <div>Sun</div>
                            <div>Mon</div>
                            <div>Tue</div>
                            <div>Wed</div>
                            <div>Thu</div>
                            <div>Fri</div>
                            <div>Sat</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp" flush="false"/>
</body>
</html>