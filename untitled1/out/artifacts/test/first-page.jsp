<%--
  Created by IntelliJ IDEA.
  User: fengbo
  Date: 2018/12/12
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>场馆预约首页</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            var length,
                currentIndex = 0,
                interval,
                hasStarted = false, //是否已经开始轮播
                t = 2000; //轮播时间间隔
            length = $('.slider-panel').length;
            //将除了第一张图片隐藏
            $('.slider-panel:not(:first)').hide();
            //将第一个slider-item设为激活状态
            $('.slider-item:first').addClass('slider-item-selected');
            //隐藏向前、向后翻按钮
            $('.slider-page').hide();
            //鼠标上悬时显示向前、向后翻按钮,停止滑动，鼠标离开时隐藏向前、向后翻按钮，开始滑动
            $('.slider-panel, .slider-pre, .slider-next').hover(function() {
                stop();
                $('.slider-page').show();
            }, function() {
                $('.slider-page').hide();
                start();
            });
            $('.slider-item').hover(function(e) {
                stop();
                var preIndex = $(".slider-item").filter(".slider-item-selected").index();
                currentIndex = $(this).index();
                play(preIndex, currentIndex);
            }, function() {
                start();
            });
            $('.slider-pre').unbind('click');
            $('.slider-pre').bind('click', function() {
                pre();
            });
            $('.slider-next').unbind('click');
            $('.slider-next').bind('click', function() {
                next();
            });
            /**
             * 向前翻页
             */
            function pre() {
                var preIndex = currentIndex;
                currentIndex = (--currentIndex + length) % length;
                play(preIndex, currentIndex);
            }
            /**
             * 向后翻页
             */
            function next() {
                var preIndex = currentIndex;
                currentIndex = ++currentIndex % length;
                play(preIndex, currentIndex);
            }
            /**
             * 从preIndex页翻到currentIndex页
             * preIndex 整数，翻页的起始页
             * currentIndex 整数，翻到的那页
             */
            function play(preIndex, currentIndex) {
                $('.slider-panel').eq(preIndex).fadeOut(500)
                    .parent().children().eq(currentIndex).fadeIn(1000);
                $('.slider-item').removeClass('slider-item-selected');
                $('.slider-item').eq(currentIndex).addClass('slider-item-selected');
            }
            /**
             * 开始轮播
             */
            function start() {
                if(!hasStarted) {
                    hasStarted = true;
                    interval = setInterval(next, t);
                }
            }
            /**
             * 停止轮播
             */
            function stop() {
                clearInterval(interval);
                hasStarted = false;
            }
            //开始轮播
            start();
        });
    </script>

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
    /*轮播样式*/
    * {
        padding: 0px;
        margin: 0px;
    }
    a {
        text-decoration: none;
    }
    ul {
        list-style: outside none none;
    }
    .slider, .slider-panel img, .slider-extra {
        width: 650px;
        height: 413px;
    }
    .slider {
        text-align: center;
        margin: 30px auto;
        position: relative;

    }
    .slider-panel, .slider-nav, .slider-pre, .slider-next {
        position: absolute;
        z-index: 8;
    }
    .slider-panel {
        position: absolute;
    }
    .slider-panel img {
        border: none;
    }
    .slider-extra {
        position: relative;
    }
    .slider-nav {
        margin-left: -51px;
        position: absolute;
        left: 50%;
        bottom: 4px;
    }
    .slider-nav li {
        background: #3e3e3e;
        border-radius: 50%;
        color: #fff;
        cursor: pointer;
        margin: 0 2px;
        overflow: hidden;
        text-align: center;
        display: inline-block;
        height: 18px;
        line-height: 18px;
        width: 18px;
    }
    .slider-nav .slider-item-selected {
        background: 0;
    }
    .slider-page a{
        background: rgba(0, 0, 0, 0.2);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#33000000,endColorstr=#33000000);
        color: #fff;
        text-align: center;
        display: block;
        font-family: "simsun";
        font-size: 22px;
        width: 28px;
        height: 62px;
        line-height: 62px;
        margin-top: -31px;
        position: absolute;
        top: 50%;
    }
    .slider-page a:HOVER {
        background: rgba(0, 0, 0, 0.4);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#66000000,endColorstr=#66000000);
    }
    .slider-next {
        left: 100%;
        margin-left: -28px;
    }


    /*
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
    }*/

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
        z-index: 10;
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
        position:absolute;
        background-color:#eeeeee;
        left:-10px;
        height:500px;
        top: 155px;
    }
    #section {
        width:600px;
        float:left;
        padding:10px;
    }
    #right {
        position:absolute;
        background-color:#eeeeee;
        right:-10px;
        height:500px;
        top: 155px;
    }
    #footer {
        background-color:cornflowerblue;
        color:white;
        clear:both;
        text-align:center;
        padding:5px;
    }
</style>

<div id="left" class="col-md-3">
    <br><br>
    <p>左边</p>
</div>

<!--div id="section"-->
    <div class="slider"  width="100">
        <ul class="slider-main">
            <li class="slider-panel">
                <a  target="_blank"><img alt="" title="" src="img/1.jpg"></a>
            </li>
            <li class="slider-panel">
                <a  target="_blank"><img alt="" title="" src="img/2.jpg"></a>
            </li>
            <li class="slider-panel">
                <a  target="_blank"><img alt="" title="" src="img/3.jpg"></a>
            </li>
            <li class="slider-panel">
                <a  target="_blank"><img alt="" title="" src="img/photo1.png"></a>
            </li>
        </ul>
        <div class="slider-extra">
            <ul class="slider-nav">
                <li class="slider-item">1</li>
                <li class="slider-item">2</li>
                <li class="slider-item">3</li>
                <li class="slider-item">4</li>
            </ul>
            <div class="slider-page">
                <a class="slider-pre" href="javascript:;;"><</a>
                <a class="slider-next" href="javascript:;;">></a>
            </div>
        </div>
    </div>


<!--/div-->

<div id="right" class="col-md-3">

    <p>
        右边
    </p>

</div>

<div id="footer">
    Made by XYW & FB
</div>

</body>

</html>
