<%--
  Created by IntelliJ IDEA.
  User: chrisallen
  Date: 3/27/18
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

    String name = request.getParameter("name");
    if (name == null){
        name = "World!";
    }
    if(name.equals("chris")){
        response.sendRedirect("/counter.jsp");
    }
%>
<html>
<head>
    <title>Hello There</title>
</head>
<body>


<h1>Hello, <%= name %></h1>

<p>Please enter your name: </p>
<form>
<input type="text" name="name"/>
</form>




</body>
</html>
