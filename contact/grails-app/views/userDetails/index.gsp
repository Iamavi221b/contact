<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 10:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="mylayout"/>

</head>

<body>
<g:if test="${!fav}">
    <div><h1>No Favourites</h1></div>
</g:if>
<g:else>
    <table class="table table-bordered" width="100%" align="center">
        <tr>
            <th>
                ID
            </th>
            <th>
                First Name
            </th>
            <th>
                Last Name
            </th>
            <th>
                Email
            </th>
            <th>
                Phone Number
            </th>
            <th>
                Date Of Birth
            </th>
            <th>
                Group Name
            </th>
        </tr>
        <g:each in="${fav}">

            <tr>
                <td>
                    ${it.id}
                </td>
                <td>
                    ${it.firstName}
                </td>
                <td>
                    ${it.lastName}
                </td>
                <td>
                    ${it.email}
                </td>
                <td>
                    ${it.number}
                </td>
                <td>
                    ${it.dateOfBirth}
                </td>
                <td>
                    <g:if test="${it.groupName}">
                        ${it.groupName.groupName}
                    </g:if>
                    <g:else>
                        No group
                    </g:else>
                </td>
            </tr>
        </g:each>
    </table>
</g:else>
</body>
</html>