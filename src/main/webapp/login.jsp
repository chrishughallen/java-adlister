
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
    <jsp:include page="partials/login.jsp">
        <jsp:param name="title" value="Login"/>
    </jsp:include>
</head>

<body>


<div id="loginForm">
    <h1>Fakebook</h1>
<form>
    <input type="text" method="POST" action="/login.jsp" name="username" placeholder="username">
    <br>
    <input type="password" name="password" placeholder="password">
    <br>
    <button>Log In</button>
</form>

</div>



</body>
</html>