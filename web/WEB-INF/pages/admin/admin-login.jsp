<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Server Admin</title>
    <link href="../css/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="login">
    <div class="login-screen">
        <div class="app-title">
            <c:choose>
                <c:when test="${adminAccountSize <= 0 }">
                    <h1>Admin Account Registration</h1>
                    <form method="post" action="/admin/join">
                        <div class="login-form">
                            <div class="control-group">
                                <input type="text" class="login-field" value="" placeholder="userId"
                                       name="userId">
                                <label class="login-field-icon fui-user"></label>
                            </div>

                            <div class="control-group">
                                <input type="text" class="login-field" value="" placeholder="username"
                                       name="username">
                                <label class="login-field-icon fui-user"></label>
                            </div>

                            <div class="control-group">
                                <input type="password" class="login-field" value="" placeholder="password"
                                       name="password">
                                <label class="login-field-icon fui-lock"></label>
                            </div>

                            <button type="submit" class="btn btn-primary btn-large btn-block">join</button>
                        </div>
                    </form>
                </c:when>
                <c:otherwise>
                    <h1>Login</h1>

                    <form method="post" action="/admin/login">
                        <div class="login-form">
                            <div class="control-group">
                                <input type="text" class="login-field" value="" placeholder="userId"
                                       name="userId">
                                <label class="login-field-icon fui-user"></label>
                            </div>

                            <div class="control-group">
                                <input type="password" class="login-field" value="" placeholder="password"
                                       name="password">
                                <label class="login-field-icon fui-lock"></label>
                            </div>

                            <button type="submit" class="btn btn-primary btn-large btn-block">login</button>
                        </div>
                    </form>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
</body>
</html>