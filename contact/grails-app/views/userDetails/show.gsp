<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 4:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body>
<h2><b> No Group </b></h2>
<hr>
<ul>
    <g:each in="${contact[1]}" var="noGroup">
        <h3><li><i> ${noGroup["firstName"]}  ${noGroup["lastName"]} - ${noGroup["number"]}</i></li></h3>
    </g:each>
    <br>
</ul>
<g:each in="${contact[0]}" var="eachContact">
    <h2><b> ${eachContact[0]["groupName"].groupName} </b></h2>
    <hr>
    <h3>
        <ul>
            <g:each in="${eachContact}">
                <li><i> ${it["firstName"]} ${it["lastName"]} - ${it["number"]} </i> </li>
                <br>
            </g:each>
        </ul>
    </h3>
</g:each>
</body>
</html>