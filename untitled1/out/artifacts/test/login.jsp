<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
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
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <form class="form-signin" method="get" action="/servlet/LoginServlet">
                <h2 class="form-signin-heading">登录到...</h2>
                <label >用户名</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名" required autofocus><br>
                <label >密码</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码" required autofocus><br>


                <label >验证码</label>
                <input type="text" name="checkcode" class="form-control" placeholder="请输入验证码" required autofocus/><br>
                <img alt="验证码" id="imagecode" src="/servlet/ImageServlet"/>&nbsp;&nbsp;&nbsp;
                <a href="javascript: reloadCode();" style="color:sienna;font-family:'Times New Roman', Times, serif;">看不清楚</a><br>


                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me" checked="checked"> 记住密码
                    </label>
                </div>
                <button type="submit" class="btn btn-primary" id="btn-login">登录</button>
                <a href="register.jsp" class="btn btn-default">注册</a>
            </form>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</div>
<script type="text/javascript">
    function reloadCode(){
        var time = new Date().getTime();//根据时间的不同来刷新
        document.getElementById("imagecode").src="<%=request.getContextPath() %>/servlet/ImageServlet?d="+time;
    }
</script>
</body>
</html>
