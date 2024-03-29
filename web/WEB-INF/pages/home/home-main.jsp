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
<jsp:include page="../header.jsp" flush="false"/>

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
                <input id="search-input" type="text" class="search-input"
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
                        <div class="input-title-container input-table-td">상점명</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자명</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">상점 아이디</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자 이메일</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자 휴대전화</div>
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
                <div class="input-table">
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">사업자등록번호</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">상호(법인명)</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표자 성명</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">업태</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">종목</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">사업장 주소</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">종목</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">사업장 주소</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">사업장 주소</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">사업장 주소</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 전화</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 팩스</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 이메일</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">매장 홈페이지</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">통신판매업 신고</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">통신판매신고 번호</div>
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
                <div class="input-table">
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">모바일 표시여부</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">서비스 문의 안내</div>
                        <div class="input-content-container input-table-td"></div>
                    </div>
                </div>
            </div>
            <div class="save-btn-container">
                <button class="btn save-btn">저장</button>
            </div>
        </div>
    </div>
</div>
<div class="footer-container">
    <div class="footer">
        <div class="left-footer col-xs-3">
            <div class="service-name">펫살롱</div>
        </div>
        <div class="right-footer col-xs-12">
            <div class="service-detail">(주) 정 코스메틱 | 대표 : 배세철 | 전화:1661-3758
                사업자등록번호 : 309-88-00093 | Fax : 0505-507-3720｜e-mail : jungcosmetic@jungco.co.kr
                주소 : 충청남도 아산시 신창면 순천향로 22, 5층 B501호 순천향대학교 내 산학협력관
                통신판매업신고번호 : 제 2015-충남아산-0179호 | 개인정보관리자 : 배세철
                Copyright (C) 2015 JUNG COSMETICS. All rights Reserved. Created by Neversunset Technology.</div>
        </div>
    </div>
</div>
</body>
</html>