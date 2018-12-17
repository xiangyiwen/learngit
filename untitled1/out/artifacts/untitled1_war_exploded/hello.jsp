<%--
  Created by IntelliJ IDEA.
  User: xiangyiwen
  Date: 2018/10/26
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<form name="loginForm" method="POST" action="dispatcher">
    <table>
        <tr>
            <td><div align="right">User Name:</div></td>
            <td><input type="text" name="user"></td>
        </tr>
        <tr>
            <td><div align="right">Password:</div></td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><input type="submit" name="submit" value="submit"></td>
            <td><input type="reset" name="reset" value="reset"></td>
        </tr>
    </table>
</form>
</body>
</html>
