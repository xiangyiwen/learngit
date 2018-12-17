<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>场馆预约</title>
  <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>

<style>
  body{
    background-image:url("img/1.jpg");
  }
  #diver{

    left: 400px;
    right: 100px;
    top: 100px;
    /* 透明遮罩层 */
    background:rgba(255,255,255,0.6)
  }


  .button
  {
    display: inline-block;
    white-space: nowrap;
    background-color: #ddd;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#eee), to(#ccc));
    background-image: -webkit-linear-gradient(top, #eee, #ccc);
    background-image: -moz-linear-gradient(top, #eee, #ccc);
    background-image: -ms-linear-gradient(top, #eee, #ccc);
    background-image: -o-linear-gradient(top, #eee, #ccc);
    background-image: linear-gradient(top, #eee, #ccc);
    border: 1px solid #777;
    padding: 0 1.5em;
    margin: 0.5em;
    font: bold 1em/2em Arial, Helvetica;
    text-decoration: none;
    color: #333;
    text-shadow: 0 1px 0 rgba(255,255,255,.8);
    -moz-border-radius: .2em;
    -webkit-border-radius: .2em;
    border-radius: .2em;
    -moz-box-shadow: 0 0 1px 1px rgba(255,255,255,.8) inset, 0 1px 0 rgba(0,0,0,.3);
    -webkit-box-shadow: 0 0 1px 1px rgba(255,255,255,.8) inset, 0 1px 0 rgba(0,0,0,.3);
    box-shadow: 0 0 1px 1px rgba(255,255,255,.8) inset, 0 1px 0 rgba(0,0,0,.3);
  }

  .button:hover
  {
    background-color: #eee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#fafafa), to(#ddd));
    background-image: -webkit-linear-gradient(top, #fafafa, #ddd);
    background-image: -moz-linear-gradient(top, #fafafa, #ddd);
    background-image: -ms-linear-gradient(top, #fafafa, #ddd);
    background-image: -o-linear-gradient(top, #fafafa, #ddd);
    background-image: linear-gradient(top, #fafafa, #ddd);
  }

  .button:active
  {
    -moz-box-shadow: 0 0 4px 2px rgba(0,0,0,.3) inset;
    -webkit-box-shadow: 0 0 4px 2px rgba(0,0,0,.3) inset;
    box-shadow: 0 0 4px 2px rgba(0,0,0,.3) inset;
    position: relative;
    top: 1px;
  }

  .button:focus
  {
    outline: 0;
    background: #fafafa;
  }

  .button:before
  {
    background: #ccc;
    background: rgba(0,0,0,.1);
    float: left;
    width: 1em;
    text-align: center;
    font-size: 1.5em;
    margin: 0 1em 0 -1em;
    padding: 0 .2em;
    -moz-box-shadow: 1px 0 0 rgba(0,0,0,.5), 2px 0 0 rgba(255,255,255,.5);
    -webkit-box-shadow: 1px 0 0 rgba(0,0,0,.5), 2px 0 0 rgba(255,255,255,.5);
    box-shadow: 1px 0 0 rgba(0,0,0,.5), 2px 0 0 rgba(255,255,255,.5);
    -moz-border-radius: .15em 0 0 .15em;
    -webkit-border-radius: .15em 0 0 .15em;
    border-radius: .15em 0 0 .15em;
    pointer-events: none;
  }

  /* Buttons and inputs */

  button.button, input.button
  {
    cursor: pointer;
    overflow: visible; /* removes extra side spacing in IE */
  }

  /* removes extra inner spacing in Firefox */
  button::-moz-focus-inner
  {
    border: 0;
    padding: 0;
  }

  /* If line-height can't be modified, then fix Firefox spacing with padding */
  input::-moz-focus-inner
  {
    padding: .4em;
  }

  /* The disabled styles */
  .button[disabled], .button[disabled]:hover, .button.disabled, .button.disabled:hover
  {
    background: #eee;
    color: #aaa;
    border-color: #aaa;
    cursor: default;
    text-shadow: none;
    position: static;
    -moz-box-shadow: none;
    -webkit-box-shadow: none;
    box-shadow: none;
  }

  /* Hexadecimal entities for the icons */

  .add:before
  {
    content: "\271A";
  }

  .edit:before
  {
    content: "\270E";
  }

  .delete:before
  {
    content: "\2718";
  }

  .save:before
  {
    content: "\2714";
  }

  .email:before
  {
    content: "\2709";
  }

  .like:before
  {
    content: "\2764";
  }

  .next:before
  {
    content: "\279C";
  }

  .star:before
  {
    content: "\2605";
  }

  .spark:before
  {
    content: "\2737";
  }

  .play:before
  {
    content: "\25B6";
  }


  /* Social media buttons */
  .tw, .fb,
  .tw:hover, .fb:hover
  {
    background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(255,255,255,.5)), to(rgba(255,255,255,0)));
    background-image: -webkit-linear-gradient(top, rgba(255,255,255,.5), rgba(255,255,255,0));
    background-image: -moz-linear-gradient(top, rgba(255,255,255,.5), rgba(255,255,255,0));
    background-image: -ms-linear-gradient(top, rgba(255,255,255,.5), rgba(255,255,255,0));
    background-image: -o-linear-gradient(top, rgba(255,255,255,.5), rgba(255,255,255,0));
    background-image: linear-gradient(top, rgba(255,255,255,.5), rgba(255,255,255,0));
  }

  .tw, .tw:focus
  {
    background-color: #3C5A98;
    color: #fff;
    text-shadow: 0 1px 0 rgba(0,0,0,.4);
  }

  .fb, .fb:focus
  {
    background-color: #3C5A98;
    color: #fff;
    text-shadow: 0 1px 0 rgba(0,0,0,.4);
  }

  .tw:hover
  {
    background-color: #879bc3;
  }

  .fb:hover
  {
    background-color: #879bc3;
  }

  .tw:before
  {
    content: "U";
    background: #4467ac;
    background: rgba(0,0,0,.1);
    color: #fff;
    text-shadow: 0 1px 0 rgba(0,0,0,.4);
  }

  .fb:before
  {
    content: "A";
    background: #4467ac;
    background: rgba(0,0,0,.1);
    color: #fff;
    text-shadow: 0 1px 0 rgba(0,0,0,.4);
  }

</style>
<body>
<div id="diver" align="center" class="col-md-5">


    <h1>欢迎来到场馆预约系统！</h1>
  <br><br>
    <a  class="button tw" width="100" href="register.jsp">用户</a><br><br>
    <a  class="button fb" width="100" href="register.jsp">管理员</a><br>



</div>
</body>
</html>
