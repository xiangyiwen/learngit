<%--
  Created by IntelliJ IDEA.
  User: xiangyiwen
  Date: 2018/10/26
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<html>
<head>
    <title>helloapp</title>
</head>
<body>
<h1>
        Welcome: <%= request.getParameter("user") %>
</h1>
</body>
</html>
