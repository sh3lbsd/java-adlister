<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--Inside of login.jsp write some code to check the submmitted values. If the username submitted is "admin", and the password is "password", redirect the user to the profile page; otherwise, redirect back to the login form.--%>
<%! boolean adminCheck = false; %>
<%
    String userName = request.getParameter("userName");
    String userPass = request.getParameter("password");
    try {
        if (userName.equalsIgnoreCase("admin") && userPass.equalsIgnoreCase("password")) {
            adminCheck = true;
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>

<html>
<head>
    <title>Login page</title>
</head>
<body>
<%--When a user visits /login.jsp, they should see a form for logging in--%>
<%--This form should submit a POST request to /login.jsp--%>
<form action="/login.jsp" method="POST">
    <%--This form should have a 'username' and 'password' field.--%>
    <label for="username">Username</label>
    <input type="text" id="username" name="userName" placeholder="username">
    <label for="password">Password</label>
    <input type="password" id="password" name="password">

    <button type="submit">Submit Form</button>
        <h2>name is: ${param.userName}</h2>

</form>

<c:if test="<%=adminCheck%>">
    <%response.sendRedirect("/profile.jsp");%>
</c:if>

</body>
</html>