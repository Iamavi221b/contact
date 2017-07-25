<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 10/7/17
  Time: 1:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mylayout"/>
    <title></title>
</head>

<body>
<h1><b>Upcoming Birthdays -</b></h1>
<hr>
<h3>
    <g:each in="${list}" var="dobContact">
        <ul>
            <g:each in="${dobContact}">
                <li><i>${it["firstName"]} ${it["lastName"]} - ${it["dateOfBirth"]}</i></li>
                <br>
            </g:each>
        </ul>
    </g:each>
</h3>
</body>
</html>