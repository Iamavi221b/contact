<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 11:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body>

<form class="form-horizontal" action="save" style="margin-top: 5%">
    <div class="form-group ">
        <label for="groupName" class="col-sm-2 control-label">Group Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="groupName" placeholder="Group Name" name="gname">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Save Group</button>
        </div>
    </div>
</form>
</body>
</html>