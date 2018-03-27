<%--
  Created by IntelliJ IDEA.
  User: chrisallen
  Date: 3/27/18
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("admin") && password.equals("password") ){
            response.sendRedirect("/profile.jsp");
    }
%>


<html>
<head>
    <title>Login</title>
</head>
<body>

<form >
    <input type="text" method="post" name="username">
    <input type="password" name="password">
</form>



</body>
</html>
