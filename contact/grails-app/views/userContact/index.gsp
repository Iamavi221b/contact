<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 3:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body>
<g:if test="${flash.dateError}">
    <div class="alert alert-success">
        <strong>${flash.dateError}</strong>
    </div>
</g:if>
<g:if test="${flash.save}">
    <div class="alert alert-success">
        <strong>${flash.save}</strong>
    </div>
</g:if>


<form action="/UserContact/save" method="post" class="form-horizontal">
    <div class="form-group ">
        <label class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control"  placeholder="First Name" name="fname">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control"  placeholder="Last Name" name="lname">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">E-mail</label>
        <div class="col-sm-4">
            <input type="email" class="form-control"  placeholder="E-mail" name="email">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Date of Birth</label>
        <div class="col-sm-4">
            <input type="date" class="form-control"  placeholder="Date of Birth" name="dob">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Number</label>
        <div class="col-sm-4">
            <input type="number" class="form-control"  placeholder="Number" name="number">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Group Name</label>
        <div class="col-sm-4">
            <select name="gname" class="form-control">
                <option value="none">None</option>
                <g:each in="${groupName}">
                    <option value="${it.id}">${it.groupName}</option>
                </g:each>
            </select>
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Add to favourite</label>
        <div class="col-sm-4">
            <input type="checkbox" name="fav" value="fav">
        </div>
    </div>
    <div class="col-md-4 col-sm-offset-2">
    <input type="submit" class="btn btn-success btn-block" value="Save Contact">
    </div>
</form>

</body>
</html>