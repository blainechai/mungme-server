<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>REMOS</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/bootstrap.css">

    <!-- 부가적인 테마 -->
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">--%>

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        /*@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);*/
    </style>
    <link href="/css/main-style.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- Split button -->
<div id="header-wrapper" style="align-content: center; text-align: center"><h1
        style="margin:0 auto; padding: 20px 0 20px 0">
    Real-Time Monitoring System(REMOS)</h1></div>
<div id="nav-wrapper">
    <div id="nav">
        <a href="#">
            <div class="header-button btn active">
                <div class="glyphicon glyphicon-bell"
                     style="text-align: center; font-size: 27px; padding-top: 10px;"></div>
                <div>알림</div>
            </div>
        </a>
        <a href="/main/status">
            <div class="header-button btn">
                <div class="glyphicon glyphicon-off"
                     style="text-align: center; font-size: 27px; padding-top: 10px;"></div>
                <div>시스템 상태</div>
            </div>
        </a>
        <a href="/profile">
            <div class="header-button btn">
                <div class="glyphicon glyphicon-list-alt"
                     style="text-align: center; font-size: 27px; padding-top: 10px;"></div>
                <div>프로파일링</div>
            </div>
        </a>
        <a href="/statistics">
            <div class="header-button btn">
                <div class="glyphicon glyphicon-signal"
                     style="text-align: center; font-size: 27px; padding-top: 10px;"></div>
                <div>통계</div>
            </div>
        </a>
        <a href="/search">
            <div class="header-button btn">
                <div class="glyphicon glyphicon-search"
                     style="text-align: center; font-size: 27px; padding-top: 10px;"></div>
                <div>검색</div>
            </div>
        </a>
    </div>
</div>
<div id="content">
    <div id="content-wrapper">
        <div id="search" class="col-xs-4">
            <div style="background: rgba(239, 239, 239, 1); height: 700px">
                <div id="search-input-wrapper" class="col-xs-12">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="검색어를 입력해주세요.">
                        <%--<div class="input-group-btn">--%>

                        <%--<button class="btn btn-default"--%>
                        <%--type="button">검색</button>--%>
                        <div class="dropdown input-group-btn">
                            <button type="button" class="btn btn-default">검색</button>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default dropdown-toggle"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&nbsp;
                                    <span class="caret"></span><span class="sr-only"></span></button>
                                <ul class="dropdown-menu">
                                    <!-- Dropdown menu links -->
                                    <li><a href="#">문자 포함</a></li>
                                    <li><a href="#">형태소</a></li>
                                    <li><a href="#">문자 일치</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">날짜 선택</a></li>
                                </ul>
                            </div>
                        </div>
                        <%--</div>--%>
                    </div>
                    <%--<div id="search-radio-wrapper"></div>--%>
                </div>
                <div class="btn-group btn-group-justified col-xs-12">
                    <a class="btn btn-default">개인 히스토리 관리</a>
                    <a class="btn btn-default">전체 히스토리 보기</a>
                </div>
                <div class="col-xs-12" style="margin-top: 15px; overflow: auto;">
                    <table class="table table-hover"
                           style="font-size: 12px;">
                        <thead style="background:rgba(165, 197, 230, 1);">
                        <th>이름</th>
                        <th>저자</th>
                        <th>내용</th>
                        <th>발행일</th>
                        </thead>
                        <tbody style="background: rgba(251,251,255,1)">
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        <tr>
                            <td>computer</td>
                            <td>john</td>
                            <td>cse</td>
                            <td>2012-08-06</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-xs-12" style="margin-top: 15px;">
                    <img src="/imgs/graph_sample.png" alt="" style="background-repeat: no-repeat;width: 100%;">
                </div>
            </div>
        </div>
        <div id="menu" class="col-xs-8">
            <div style="background: rgba(224, 234, 244, 1);  height: 700px;">
                <div id="tab-wrapper">
                    <ul class="nav nav-tabs" style="padding-top: 15px;">
                        <li role="presentation" class="active"><a href="#">학교</a></li>
                        <li role="presentation"><a href="#">저자</a></li>
                        <li role="presentation"><a href="#">제목</a></li>
                    </ul>
                </div>
                <div id="progress-wrapper">
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                             aria-valuemax="100"
                             style="width: 60%;">
                            60%
                        </div>
                    </div>
                </div>
                <div id="result-table-wrapper" style="margin: 15px;">
                    <table class="table  table-hover" style="background:rgba(165, 197, 230, 1);">
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>라인</th>
                            <th>파일 경로</th>
                            <th>출현 일자</th>
                            <th>비고</th>
                        </tr>
                        </thead>
                        <tbody style="background: rgba(251,251,255,1)">
                        <tr>
                            <td>1</td>
                            <td>file1</td>
                            <td>file/path/file1.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>file2</td>
                            <td>file/path/file2.txt</td>
                            <td>1990-02-11</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>file3</td>
                            <td>file/path/file3.txt</td>
                            <td>1990-02-12</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>file4</td>
                            <td>file/path/file4.txt</td>
                            <td>1990-02-14</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>file5</td>
                            <td>file/path/file5.txt</td>
                            <td>1990-02-15</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>file6</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>file6</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>file6</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>file6</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>file10</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>file10</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>file10</td>
                            <td>file/path/file6.txt</td>
                            <td>1990-02-17</td>
                            <td>비고</td>
                        </tr>
                        </tbody>
                    </table>
                    <div>
                        <nav aria-label="..." style="text-align: center;">
                            <ul class="pagination pagination-sm" style="margin: 0 auto;">
                                <li><a href="#" aria-label="Previous" class="disabled"><span
                                        aria-hidden="true">«</span></a>
                                </li>
                                <li><a href="#" class="active">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>