<%--
  Created by IntelliJ IDEA.
  User: fengbo
  Date: 2018/12/12
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>留言</title>
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
        width:600px;
        float:left;
        padding:10px;
    }
    #right {
        width:500px;
        float:left;
        padding:10px;
    }

    #content{
        width:800px;
        float:right;
        padding:15px;
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
    <h>留言板块</h>

    <p><a href="#">交流互动</a><br></p>
</div>

<div id="section">
    <div class="container" >
          <div id="register_div" class="col-md-4">
              <form class="form-signin" action="register-submit.jsp" method="post" name="reg" >
                  <h2 class="form-signin-heading" align="center">注册到...</h2>
                  <div id="info">

                  </div>
                  <label >留言内容</label>
                  <input type="textarea" name="content1" id="content1" class="form-control" placeholder="请输入留言" required autofocus><br>
                  <label >姓名</label>
                  <input type="text" name="name" id="name"  class="form-control" placeholder="请输入姓名" required><br>
                  <label >联系方式</label>
                  <input type="text" name="phone-number" id="phone-number" class="form-control" placeholder="请输入lian'xi"
                         required autofocus onkeyup="value=value.replace(/[^(\d)]/g,'')" >
                  <span id="ts"></span>
                  <br>

              </form>

            </div>
        </div>
        <div class="col-md-4">
        </div>
</div>




        <script language="javascript">
            function agree(){
                if(document.getElementById('cb').checked)
                    document.getElementById('tj').disabled=false;
                else
                    document.getElementById('tj').disabled='disabled';
            }
        </script>

</div>

<div id="right">
    <h>协议（必读）</h>
    <p>请留下真实的姓名和电话，以便及时联系回复<br>
        尊重网上道德，遵守中华人民共和国的各项有关法律法规<br>
        承担一切因您的行为而直接或间接导致的民事或刑事法律责任<br>
        本站管理人员有权保留或删除其管辖留言中的任意内容<br>
        在此留言即表明您已经阅读并接受上述条款 </p>
</div>

<div id="content">留言内容</div>

<div id="footer">
    Made by XYW & FB
</div>

</body>

</html>