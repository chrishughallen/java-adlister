
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <jsp:include page="partials/profile.jsp">
        <jsp:param name="title" value="Profile"/>
    </jsp:include>
</head>
<body>

<%--<%@include file="partials/profile.jsp"%>--%>

<nav>
    <ul>
        <a href="/login.jsp"><li class="navBtn">Logout</li></a>
        <a href="#"><li class="navBtn">View Profile</li></a>
        <a href="#"><li class="navBtn">Edit Profile</li></a>

    </ul>
</nav>



</body>
</html>



