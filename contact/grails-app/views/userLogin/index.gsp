<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 6/7/17
  Time: 9:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<div class="container" style="margin-top: 5%">
    <g:if test="${flash.login}">
        <div class="alert alert-danger">
            <strong>${flash.login}</strong>
        </div>
    </g:if>
    <g:if test="${flash.loginMessage}">
        <div class="alert alert-danger">
            <strong>${flash.loginMessage}</strong>
        </div>
    </g:if>
    <g:if test="${flash.logout}">
        <div class="alert alert-danger">
            <strong>${flash.logout}</strong>
        </div>
    </g:if>
    <g:if test="${flash.signin}">
        <div class="alert alert-success">
            <strong>${flash.signin}</strong>
        </div>
    </g:if>
<form class="form-horizontal" action="login" style="margin-top: 5%">
    <div class="form-group ">
        <label for="inputEmail" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-4">
            <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-4">
            <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Remember me
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Log in</button>
            <g:link action="signin"  role="button" class="btn btn-primary">Create New Account</g:link>
        </div>
    </div>


</form>
</div>
</body>
</html>