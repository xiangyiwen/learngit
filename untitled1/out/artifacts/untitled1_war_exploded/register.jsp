<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>

    body
    {
        background-image:url("http://pic.616pic.com/bg_w1180/00/05/88/LKh4AmZ1JO.jpg");
        /*background-repeat:no-repeat;*/
    }
    #register_div{
        /* 居中 */
        position: absolute;
        /*left: 50%; top: 100%; */
        width: 500px; height: 330px;
        /* 透明遮罩层 */
        background:rgba(255,255,255,0.6)
    }
</style>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid" >
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
<div class="container" id="register_div">
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">

            <form class="form-signin" action="register-submit.jsp" method="post" name="reg" width=50% height=50%>
                <h2 class="form-signin-heading">注册到...</h2>
                <div id="info">

                </div>
                <label >用户名</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名" required autofocus><br>
                <label >手机号码</label>
                <input type="text" name="phone-number" id="phone-number" class="form-control" placeholder="请输入手机号码"
                       required autofocus onkeyup="value=value.replace(/[^(\d)]/g,'')" >
                <span id="ts"></span>
                <br>
                <label >邮件地址</label>
                <input type="text" name="mail"； class="form-control" width=50 placeholder="请输入邮箱" required autofocus >@
                <select name="email" class="form-control" placeholder="请输入手机号码" required autofocus>
                    <option value="1" selected>163.com</option>
                    <option value="3">126.com</option>
                    <option value="2">qq.com</option>
                </select>      <br>
                <label >密码</label>
                <input type="password" name="password" id="pw1"  class="form-control" placeholder="请输入密码" required><br>
                <label >重复密码</label>
                <input type="password" name="password2" id="pw2" class="form-control" placeholder="请再次输入密码" required maxLength="16" onkeyup
                        ="validate()"><br><span id="tishi"></span> <br>   <br>



                <button type="submit" class="btn btn-primary" id="btn-reg" disable=“disable”>注册</button>
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                <a href="login.jsp" class="btn btn-default" id="btn-reg1">返回登录</a>
            </form>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</div>

<script>
    function validate() {
        var pw1 = document.getElementById("pw1").value;
        var pw2 = document.getElementById("pw2").value;
        if(pw1 == pw2) {
            document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("submit").disabled = false;
        }
        else {
            document.getElementById("tishi").innerHTML="<font color='red' class='alert alert-danger' role='alert'>两次密码不相同</font>";
            document.getElementById("submit").disabled = true;
        }
    }
</script>



</body>
</html>
