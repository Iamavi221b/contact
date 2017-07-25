<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 9/7/17
  Time: 11:44 AM
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
<g:if test="${flash.exist}">
    <div class="alert alert-warning">
    <strong>${flash.exist}</strong>
    </div>
</g:if>
<div class="container">
<form class="form-horizontal" action="save" style="margin-top: 5%">
    <h2 class="col-sm-offset-2">Sign in</h2>
    <div class="form-group ">
        <label for="firstName" class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="firstName" placeholder="First Name" name="fname" required>
        </div>
    </div>
    <div class="form-group">
        <label for="lastName" class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lname" required>
        </div>
    </div>

        <div class="form-group ">
            <label for="inputEmail" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-4">
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" required>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-4">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password" required>
            </div>
        </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Sign in</button>
        </div>
    </div>

</form>
</div>
</body>
</html>