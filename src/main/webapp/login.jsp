<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getParameter("title") != null && request.getParameter("content") != null) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
    }
%>


<html>
<head>
    <title>Post Form</title>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<h1>Login Form</h1>
<form action="show-post.jsp" method="POST">
    <label for="title">Title</label>
    <br>
    <input id="title" type="text" placeholder="Enter title" name="title">
    <br>
    <br>
    <label for="content">Content</label>
    <br>
    <textarea name="content" id="content" placeholder="Enter content" cols="30" rows="10"></textarea>
    <br>
    <button>Submit</button>
</form>

<h3><%= request.getParameter("title") %></h3>
<h3><%= request.getParameter("content") %></h3>

</body>
</html>























<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>


<%--&lt;%&ndash;Inside of login.jsp write some code to check the submmitted values. If the username submitted is "admin", and the password is "password", redirect the user to the profile page; otherwise, redirect back to the login form.&ndash;%&gt;--%>
<%--<%! boolean adminCheck = false; %>--%>
<%--<%--%>
<%--    String userName = request.getParameter("userName");--%>
<%--    String userPass = request.getParameter("password");--%>
<%--    try {--%>
<%--        if (userName.equalsIgnoreCase("admin") && userPass.equalsIgnoreCase("password")) {--%>
<%--            adminCheck = true;--%>
<%--        }--%>
<%--    }catch(Exception e){--%>
<%--        e.printStackTrace();--%>
<%--    }--%>
<%--%>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Login page</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--&lt;%&ndash;When a user visits /login.jsp, they should see a form for logging in&ndash;%&gt;--%>
<%--&lt;%&ndash;This form should submit a POST request to /login.jsp&ndash;%&gt;--%>
<%--<form action="/login.jsp" method="POST">--%>
<%--    &lt;%&ndash;This form should have a 'username' and 'password' field.&ndash;%&gt;--%>
<%--    <label for="username">Username</label>--%>
<%--    <input type="text" id="username" name="userName" placeholder="username">--%>
<%--    <label for="password">Password</label>--%>
<%--    <input type="password" id="password" name="password">--%>

<%--    <button type="submit">Submit Form</button>--%>
<%--        <h2>name is: ${param.userName}</h2>--%>

<%--</form>--%>

<%--<c:if test="<%=adminCheck%>">--%>
<%--    <%response.sendRedirect("/profile.jsp");%>--%>
<%--</c:if>--%>

<%--</body>--%>
</html>