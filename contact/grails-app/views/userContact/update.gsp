<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 9/7/17
  Time: 11:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body>
<form action="/UserContact/saveUpdate" method="post" class="form-horizontal">
    <div class="form-group ">
        <label class="col-sm-2 control-label">First Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" value="${var[0]?. firstName}"  placeholder="First Name" name="fname">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Last Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control"  value="${var[0]?. lastName}" placeholder="Last Name" name="lname">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">E-mail</label>
        <div class="col-sm-4">
            <input type="email" class="form-control" value="${var[0]?. email}" placeholder="E-mail" name="email">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Date of Birth</label>
        <div class="col-sm-4">
            <input type="date" class="form-control" value="${var[0]?. dateOfBirth}" placeholder="Date of Birth" name="dob">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Number</label>
        <div class="col-sm-4">
            <input type="number" class="form-control" value="${var[0]?. number}" placeholder="Number" name="number">
        </div>
    </div>

    <div class="form-group ">
        <label class="col-sm-2 control-label">Group Name</label>
        <div class="col-sm-4">
            <select name="gname" class="form-control">
                <option value="${var[1]?. id}">${var[1]?. groupName}</option>
                <option value="none">None</option>
                <g:each in="${var[2]}">
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
    <input type="hidden" name="id" value="${var[0]?. id}">
    <div class="col-md-4 col-sm-offset-2">
        <input type="submit" class="btn btn-success btn-block" value="Save Update">
    </div>
</form>

</body>
</html>