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
        <jsp:include page="shop-left-menu.jsp" flush="false"/>
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
                        <div class="input-content-container input-table-td"><input type="text" name="shop-name"
                                                                                   title="shop-name"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자명</div>
                        <div class="input-content-container input-table-td"><input type="text" name="shop-manager"
                                                                                   title="shop-manager"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">상점 아이디</div>
                        <div class="input-content-container input-table-td"><span class="shop-info-span">kswkill2</span>
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">상점 영업시간</div>
                        <div class="input-content-container input-table-td"><input type="text" name="shop-open-hour"
                                                                                   title="shop-open-hour"
                                                                                   class="shop-info-input"
                                                                                   placeholder="open: 11:00 ~ 20:00">
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자 이메일</div>
                        <div class="input-content-container input-table-td"><span
                                class="shop-info-span shop-info-email">kswkill2@naver.com</span>
                            <button>다른 이메일로 본인 인증</button>
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">관리자 휴대전화</div>
                        <div class="input-content-container input-table-td"><span
                                class="shop-info-span shop-info-email">010 - 5805 - 8379  [ 본인확인 완료 ]</span>
                            <button>다른 휴대전화로 본인 인증</button>
                        </div>
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
                        <div class="input-content-container input-table-td"><input type="text" name="shop-business-num"
                                                                                   title="shop-business-num"
                                                                                   class="shop-info-input">
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">상호(법인명)</div>
                        <div class="input-content-container input-table-td"><input type="text" name="shop-business-name"
                                                                                   title="shop-business-name"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표자 성명</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-representative"
                                                                                   title="shop-representative"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">업태</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-sevice-category-1"
                                                                                   title="shop-business-num"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">종목</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-sevice-category-2"
                                                                                   title="shop-business-num"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td" style="height: 140px;">사업장 주소</div>
                        <div class="input-content-container input-table-td" style="height: 140px;padding-top: 8px;">
                            <input type="text"
                                   name=""
                                   title="shop-business-zip-code"
                                   class="shop-info-input shop-business-zip-code" style="width: 130px;" disabled>
                            <button class="shop-search-address" style="margin-left:5px;width: 120px;">주소 검색</button>
                            <input
                                    type="text" name="shop-business-address-1"
                                    title="shop-business-address-1"
                                    class="shop-info-input shop-business-address-1" style="display: block;" disabled><input
                                type="text"
                                name="shop-business-address-2"
                                title="shop-business-address-2"
                                class="shop-info-input shop-business-address-2"
                                style="display: block;">
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 전화</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-representative-phone"
                                                                                   title="shop-representative-phone"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 팩스</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-representative-fax"
                                                                                   title="shop-representative-fax"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">대표 이메일</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-representative-email"
                                                                                   title="shop-representative-email"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">매장 홈페이지</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-homepage"
                                                                                   title="shop-homepage"
                                                                                   class="shop-info-input"></div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">통신판매업 신고</div>
                        <div class="input-content-container input-table-td" style="padding-left: 9px;"><label><input
                                id="communication-business-true" name="shop-communication-business" type="radio"
                                style="margin-right: 8px" value="true">신고함</label><label><input
                                id="communication-business-false" name="shop-communication-business" type="radio"
                                style="margin-right: 8px" value="false">신고안함</label><span
                                class="shop-business-communication-info">대표 이메일은 주문시나 회원가입시 고객에게 메일이 보내지고, 운영자가 받는 기본 메일입니다.</span>
                        </div>
                    </div>
                    <div class="input-table-row">
                        <div class="input-title-container input-table-td">통신판매신고 번호</div>
                        <div class="input-content-container input-table-td"><input type="text"
                                                                                   name="shop-communication-num"
                                                                                   title="shop-communication-num"
                                                                                   class="shop-info-input"></div>
                    </div>
                </div>
            </div>
            <div class="sub-menu-container">
                <div class="sub-menu-name-container">
                    <div style="width: 4px;height: 18px;object-fit: contain;background-color: #ed5565;float: left;margin-top: 2px;margin-right: 15px;"></div>
                    상점 사업자 정보 설정
                </div>
                <div class="sub-menu-description">
                    - 상점의 샵정보 및 소개이미지를 입력할 수 있으며, 입력한 정보는 고객 어플 화면에 노출됩니다.
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
                        <div class="input-content-container input-table-td" style="padding-left: 9px;"><label><input
                                name="shop-mobile-show" type="radio"
                                style="margin-right: 8px" value="true">표시함</label><label><input
                                name="shop-mobile-show" type="radio"
                                style="margin-right: 8px" value="false">표시안함</label></div>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
    $(function () {
        var menu = $(".header-${menu}-btn").addClass('active');
        menu.find('img').attr('src', menu.find('img').attr('src').replace('.png', "-active.png"));
        var submenu = $(".${submenu}").addClass('active');
    });

    $(document).ready(function () {
        $('.shop-search-address').click(function () {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                    // 예제를 참고하여 다양한 활용법을 확인해 보세요.
                    $('.shop-business-zip-code').val(data.zonecode);
                    $('.shop-business-address-1').val(data.address+" ("+data.buildingName+")");
                }
            }).open();
        });
    });
</script>
</body>
</html>