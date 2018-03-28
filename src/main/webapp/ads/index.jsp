
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Ads</title>
    <style>
        h2{
            color: blue;
        }
    </style>
</head>
<body>

<h1>Here are the ad's for today </h1>



<c:forEach var="ad" items="${ads}">
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>
    <hr>
</c:forEach>




</body>
</html>
