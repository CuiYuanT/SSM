<%--
  Created by IntelliJ IDEA.
  User: 86177
  Date: 2023/3/5
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="/SSM/login.do" method="post">
        用户名<input type="text" name="username"><br>
        密码<input type="password" name="password"><br>
        <input type="submit" value="登录">
    </form>
</body>
</html>
