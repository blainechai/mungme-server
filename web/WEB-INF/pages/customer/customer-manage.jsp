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
    <style type="text/css">
        tbody:before {
            content: "-";
            display: block;
            line-height: 22px;
            color: transparent;
        }

        tbody > tr:nth-child(odd) {
            background-color: #f9f9f9;
        }

        tbody > tr > td {
            border-right: 1px #ededed solid;
        }

        tbody > tr > td:last-child {
            border-right: none;
        }
    </style>
</head>
<body>
<jsp:include page="../header.jsp" flush="false"/>

<div class="container">
    <div class="row">
        <jsp:include page="customer-left-menu.jsp" flush="false"/>
        <div id="right-content-container" class="right-content-container col-xs-12">
            <div class="category-nav">
                <span class="category-name">홈<span
                        class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">고객관리<span
                    class="glyphicon glyphicon-triangle-right category-name-separator"></span></span><span
                    class="category-name">기본정보관리</span>
            </div>
            <div class="sub-menu-container">
                <div class="sub-menu-name-container">
                    <div style="width: 4px;height: 18px;object-fit: contain;background-color: #ed5565;float: left;margin-top: 2px;margin-right: 15px;"></div>
                    고객 관리
                </div>
                <div style="width: 100%;position: relative;display: inline-block;margin-bottom: 11px;">
                    <div style="float: left;">
                        <button class="customer-btn customer-delete-btn"><span style="margin-right: 5px;">X</span><span>삭제</span>
                        </button>
                        <button class="customer-btn customer-black-list-btn"><span>불량회원 설정</span></button>
                    </div>
                    <div style="float: left;position: absolute;right: 0;">
                        <button class="customer-btn customer-set-artist-btn"><span>담당 미용사</span><span
                                class="custom-caret-down"></span></button>
                        <button class="customer-btn customer-show-num-btn"><span>10개씩 보기</span><span
                                class="custom-caret-down"></span></button>
                    </div>
                </div>
                <div class="customer-table-container">
                    <table class="customer-list-table" style="width: 100%;">
                        <thead style="background-color: #f9f9f9;box-shadow: 1px 1px 2px 0 rgba(175, 175, 175, 0.5);border: solid 1px #dbdbdb;">
                        <tr style="height: 53.3px; text-align: center;">
                            <th><input type="checkbox"></th>
                            <th>고객번호</th>
                            <th>고객명</th>
                            <th>애견명</th>
                            <th>연락처</th>
                            <th>이용일시</th>
                            <th>서비스 내역</th>
                            <th>금액</th>
                            <th>특이사항 (애견)</th>
                        </tr>
                        </thead>
                        <tbody style="overflow-y:auto;height: 300px;">
                        <tr style="height: 53.3px; text-align: center;">
                            <td><input type="checkbox"></td>
                            <td>160801</td>
                            <td>강석환</td>
                            <td>강석환</td>
                            <td>010-7479-4446</td>
                            <td>2016-12-29</td>
                            <td>트리밍</td>
                            <td>350,000</td>
                            <td>공격성 있음</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
            <div class="customer-register-module-container">
                <div class="customer-register-btn-container">
                    <button class="customer-register-btn customer-new-btn"><span class="glyphicon glyphicon-plus-sign"
                                                                                 style="vertical-align: middle;font-size: 20px;margin-right: 13px;top:0;"></span><span
                            style="margin-right:10px;">신규등록</span>
                    </button>
                    <button class="customer-register-btn customer-simple-btn" style="margin: 0 33px 0 33px"><span
                            class="glyphicon glyphicon-plus-sign"
                            style="vertical-align: middle;font-size: 20px;margin-right: 13px;top:0;"></span><span
                            style="margin-right:10px;">간편등록</span>
                    </button>
                    <button class="customer-register-btn customer-excel-btn"><span class="glyphicon glyphicon-plus-sign"
                                                                                   style="vertical-align: middle;font-size: 20px;margin-right: 13px;top:0;"></span><span
                            style="margin-right:10px;">엑셀등록</span></button>
                </div>
            </div>
            <div class="pager-module-container" style="margin-bottom: 28px;">
                <div class="pager-module">
                    <div class="pager-btn page-prev-btn"><span class="glyphicon glyphicon-menu-left"></span></div>
                    <div class="pager-btn active">1</div>
                    <div class="pager-btn">2</div>
                    <div class="pager-btn">3</div>
                    <div class="pager-btn page-next-btn"><span class="glyphicon glyphicon-menu-right"></span></div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp" flush="false"/>

<script>
    $(document).ready(function () {
        for (var ii = 0; ii < 10; ii++) {
            var listTrEl = $('<tr style="height: 53.3px; text-align: center;">' +
                    '<td><input type="checkbox"></td>' +
                    '<td>160801</td>' +
                    '<td>강석환</td>' +
                    '<td>강석환</td>' +
                    '<td>010-7479-4446</td>' +
                    '<td>2016-12-29</td>' +
                    '<td>트리밍</td>' +
                    '<td>350,000</td>' +
                    '<td>공격성 있음</td>' +
                    '</tr>');
            $('.customer-list-table tbody').append(listTrEl);
        }

        $('.customer-simple-btn').click(function () {
            var tmpEl = $('<div class="customer-simple">' +
                    '<span class="glyphicon glyphicon-remove-circle customer-simple-remove-btn" style=""></span>' +
                    '<span style="position: absolute;top:55px;font-family: Nanum Gothic;font-size: 20px;font-weight: bold;font-style: normal;font-stretch: normal;color: #ed5565;left: 213px;">MUNGME</span>' +
                    '<div class="customer-simple-input-container">' +
                    '<input type="text" placeholder="성명">' +
                    '<input type="text" placeholder="휴대폰 번호">' +
                    '<input type="text" placeholder="예약일자">' +
                    '<input type="text" placeholder="서비스 내역">' +
                    '<button class="customer-register-btn customer-simple-submit-btn" style="margin-top: 46px;"><span style="">등록하기</span></button>' +
                    '</div>' +
                    '</div>');

            tmpEl.find('.customer-simple-remove-btn').click(function () {
                tmpEl.remove();
            });
            $('.container').append(tmpEl);
        });
    });
</script>
</body>
</html>