
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username == null && password == null){
        username = "";
    }
    else if (username.equals("admin") && password.equals("password") ){
        response.sendRedirect("/profile.jsp");
    }

%>

<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp"%>

</head>
<body>


<div id="loginForm">
    <h1>Login</h1>

<form >
    <input type="text" method="POST" action="/login.jsp" name="username" placeholder="username">
    <input type="password" name="password" placeholder="password">
    <br>
    <input type="submit">
</form>

</div>



</body>
</html>