<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>结果</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<style type="text/css">
    body
    {
        background-image:url("http://pic.616pic.com/bg_w1180/00/05/88/LKh4AmZ1JO.jpg");
    }
</style>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./">场馆预约</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <%
        out.println("<div class='alert alert-danger' role='alert'>验证码输入错误</div>");

    %>
    <br>
    <button type="submit"  id="btn-reg"  class="btn btn-primary" style="background-color:#FFCCCC;color:black;text-align:center;font-size:10pt;
    font-family:'Times New Roman', Times, serif; border:'none' " onclick="window.location.href='login.jsp'"  >返回登陆</button>
</div>
</body>
