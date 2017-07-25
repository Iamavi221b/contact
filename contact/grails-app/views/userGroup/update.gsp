<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 9/7/17
  Time: 4:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body>
<form class="form-horizontal" action="/UserGroup/saveUpdate" style="margin-top: 5%">
    <div class="form-group ">
        <label class="col-sm-2 control-label">Group Name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" value="${update.groupName}" placeholder="Group Name" name="gName">
        </div>
    </div>
    <input type="hidden" value="${update.id}" name="id">
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit"  class="btn btn-success" value="Save Update" >

        </div>
    </div>
</form>

</body>
</html>