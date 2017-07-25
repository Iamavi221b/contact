<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 10/7/17
  Time: 2:01 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mylayout"/>
    <title></title>
</head>

<body>
<g:if test="${flash.loginMessage}">
    <div class="alert alert-success">
        <strong>${flash.loginMessage}</strong>
    </div>
</g:if>
<g:if test="${flash.groupAdd}">
    <div class="alert alert-success">
        <strong>${flash.groupAdd}</strong>
    </div>
</g:if>
<g:if test="${flash.save}">
    <div class="alert alert-success">
        <strong>${flash.save}</strong>
    </div>
</g:if>
</body>
</html>