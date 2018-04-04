<%--
  Created by IntelliJ IDEA.
  User: chrisallen
  Date: 4/4/18
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>

<form action="/register" method="post">
        <label for="username">Username</label>
        <input id="username" name="username" class="form-control" type="text">
    <br>
    <label for="email">Email</label>
    <input id="email" name="email" class="form-control" type="text">
        <label for="password">password</label>
    <input name="password" id="password" type="password">
    <br>
    <input type="submit">
</form>

</body>
</html>
