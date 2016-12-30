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
        <jsp:include page="cs-left-menu.jsp" flush="false"/>
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
<jsp:include page="../footer.jsp" flush="false"/>
</body>
</html>