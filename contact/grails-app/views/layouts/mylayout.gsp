<%--
  Created by IntelliJ IDEA.
  User: avi221b
  Date: 7/7/17
  Time: 10:30 AM
--%>
<!DOCTYPE html>
%{--<!--<%@ page contentType="text/html;charset=UTF-8" %> -->--}%
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">
<div>

    <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">My PhoneBook</a>
            </div>
            <div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Group<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/UserGroup/index">Create</a></li>
                                <li><a href="/UserGroup/show">Show</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/UserContact/index">Create</a></li>
                                <li><a href="/UserContact/show">Show</a></li>
                            </ul>
                        </li>
                        <li><a href="/UserDetails/show">PhoneBook</a></li>
                        <li><a href="/UserDetails/index">Favourites</a></li>
                        <li><a href="/UserDetails/reminder">Reminder</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/UserLogin/logout">Logout</a></li>
                    </ul>

                </div>
            </div>
        </div>
    </nav>
</div>

<g:layoutBody/>
</body>
</html>