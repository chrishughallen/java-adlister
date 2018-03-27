
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
    <%@include file="partials/login.jsp"%>

</head>
<body>

<a href="#"><p class="navBtn">FakeBook</p></a>
<br>

<div id="loginForm">
<form>
    <input type="text" method="POST" action="/login.jsp" name="username" placeholder="username">
    <br>
    <input type="password" name="password" placeholder="password">
    <br>
    <button>Submit</button>
</form>

</div>



</body>
</html>