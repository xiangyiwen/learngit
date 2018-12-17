<%--
  Created by IntelliJ IDEA.
  User: fengbo
  Date: 2018/12/12
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>新闻</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./">场馆预约系统欢迎你</a>
        </div>

    </div>
</nav>

<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: cornflowerblue;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover {
        background-color: cornflowerblue;
    }
</style>


<meta charset="utf-8">
<style>
    .dropbtn {
        background-color: cornflowerblue;
        color: white;
        padding: 30px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: cornflowerblue;
    }
</style>

<style>
    #first_line{
        background-color :cornflowerblue;
    }
</style>

<div id="first_line">
    <div class="dropdown">
        <button class="dropbtn">首页</button>

    </div>
    <div class="dropdown">
        <button class="dropbtn">场馆</button>
        <div class="dropdown-content">
            <a href="http://www.runoob.com">场馆介绍</a>
            <a href="http://www.runoob.com">场馆预约</a>

        </div>
    </div>

    <div class="dropdown">
        <button class="dropbtn">新闻</button>
    </div>

    <div class="dropdown">
        <button class="dropbtn" onclick="window.location.href='message.jsp'">留言</button>
    </div>

    <div class="dropdown">
        <button class="dropbtn">个人中心</button>
        <div class="dropdown-content">
            <a href="http://www.runoob.com">订单查看</a>
            <a href="http://www.runoob.com">修改信息</a>

        </div>

    </div>
</div>


<style>
    #left{
        line-height:30px;
        background-color:#eeeeee;
        height:500px;
        width:300px;
        float:left;
        padding:5px;
        font-size: 20px;
    }
    #section {
        width:1100px;
        float:left;
        padding:10px;
    }

    #footer {
        background-color:cornflowerblue;
        color:white;
        clear:both;
        text-align:center;
        padding:5px;
    }
</style>

<div id="left">
    <h>新闻中心</h>

    <p><a href="#">通知公告</a><br></p>
    <p><a href="#">新闻动态</a></p>
</div>

<div id="section">

    <h2>您的位置：新闻中心>>通知公告</h2>
    <p>
        新闻内容
    </p>

</div>


<div id="footer">
    Made by XYW & FB
</div>

</body>

</html>
