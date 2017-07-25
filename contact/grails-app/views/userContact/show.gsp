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
<g:if test="${flash.del}">
    <div class="alert alert-success">
        <strong>${flash.del}</strong>
    </div>
</g:if>
<g:if test="${flash.update}">
    <div class="alert alert-success">
        <strong>${flash.update}</strong>
    </div>
</g:if>

    <table class="table table-hover table table-bordered">
        <thead>
        <tr>
            <th>Id. No.</th>
            <th>Name</th>
            <th>E-Mail</th>
            <th>Number</th>
            <th>Date of Birth</th>
            <th>Group</th>
            <th>Favourite</th>
            <th>User</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${var}">
            <tr>
                <td>${it.id}</td>
                <td>${it.firstName} ${it.lastName}</td>
                <td>${it.email}</td>
                <td>${it.number}</td>
                <td>${it.dateOfBirth}</td>
                <td>
                    <g:if test="${it.groupName}">
                        ${it.groupName.groupName}
                    </g:if>
                    <g:else>
                        None
                    </g:else>
                </td>
                <td>
                    <g:if test="${it.favourite==true}">
                        Yes
                    </g:if>
                    <g:else>
                        No
                    </g:else>
                </td>
                <td>${it.userName.id}</td>
                <td>
                    <g:link action="update" id="${it.id}" role="button" class="btn btn-info" >Update</g:link>
                    <g:link action="delete" id="${it.id}" role="button" class="btn btn-danger">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>

</body>
</html>