<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//    would normally go in a servlet
(List<Person> people = new ArrayList<>(Arrays.asList(
    new Person(1, "Shelby", "Davis", 26),
    new Person(2, "OJ", "Hill", 16),
    new Person(3, "Emily", "Knight", 25)
));

request.Attribute
%>
<html>
<head>
    <title>
Person List
    </title>
</head>
<body>
<%--display people in a table using jstl--%>
<table>
<tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Age</th>
</tr>
    <tr>
    <c:foreach var="person" items="${people}">
<p>${person.firstName}</p>
    <tr>
        <td>${person.id}</td>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td>${person.}</td>
    </tr>
    </c:foreach>
    </tr>

<%--    <tr>--%>
<%--        <th>1</th>--%>
<%--        <th>Shelby</th>--%>
<%--        <th>Davis</th>--%>
<%--        <th>26</th>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th>1</th>--%>
<%--        <th>Shelby</th>--%>
<%--        <th>Davis</th>--%>
<%--        <th>26</th>--%>
<%--    </tr>--%>
</table>
</body>
</html>