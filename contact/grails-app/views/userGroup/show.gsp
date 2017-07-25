<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 3:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>
</head>

<body >

<g:if test="${flash.delete}">
    <div class="alert alert-success">
        <strong>${flash.delete}</strong>
    </div>
</g:if>
<g:if test="${flash.notdelete}">
    <div class="alert alert-warning">
        <strong>${flash.notdelete}</strong>
    </div>
</g:if>
<g:if test="${flash.update}">
    <div class="alert alert-success">
        <strong>${flash.update}</strong>
    </div>
</g:if>
<g:if test="${flash.notupdate}">
    <div class="alert alert-success">
        <strong>${flash.notupdate}</strong>
    </div>
</g:if>


    <table class="table table-hover table table-bordered">
        <thead>
        <tr>
            <th>Id No.</th>
            <th>Group Name</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${groupName}">
       <tr>
        <td>${it.id}</td>
        <td>${it.groupName}</td>
        <td>
            <g:link action="update" id="${it.id}" role="button" class="btn btn-info">Update</g:link>
            <g:link action="delete" id="${it.id}" role="button" class="btn btn-danger">Delete</g:link>
        </td>
        </g:each>
        </tr>
        </tbody>

    </table>

</body>
</html>