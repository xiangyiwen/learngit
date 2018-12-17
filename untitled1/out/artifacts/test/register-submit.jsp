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
            <a class="navbar-brand" href="WEB-INF">场馆预约</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <% String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String phone = request.getParameter("phone-number");
        String mail = request.getParameter("mail");
        String email = request.getParameter("email");
    %>
    <%
        if(password.equals(password2)){
            out.println("<div class='alert alert-success' role='alert'>注册成功</div>");
            out.println("<ul class='list-group'>");
            out.println("<li class='list-group-item'>用户名：" + username + "</li>");
            out.println("<li class='list-group-item'>密码：" + password + "</li>");
            out.println("<li class='list-group-item'>手机号：" + phone + "</li>");
            out.println("<li class='list-group-item'>邮箱：" + mail+"@"+email + "</li>");
            out.println("</ul>");
        }
        else{
            out.println("<div class='alert alert-danger' role='alert'>两次密码输入不一致，请重新输入</div>");
        }
    %>

</div>
</body>
