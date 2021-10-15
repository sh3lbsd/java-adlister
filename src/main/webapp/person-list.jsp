<%@ page import="entity.Person" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//    would normally go in a servlet
List<Person> people = new ArrayList<>(Arrays.asList(
    new Person(1, "Shelby", "Davis", 26),
    new Person(2, "OJ", "Hill", 16),
    new Person(3, "Emily", "Knight", 25)
));

// pass the array people to our view??
request.setAttribute("people", people);

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
    <c:forEach var="person" items="${people}">
    <tr>
        <td>${person.id}</td>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td>${person.age}</td>
    </tr>
    </c:forEach>
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
<%
    //be in a servlet
Person p = new Person(4, "Karen", "Shmaren", 69);
    request.setAttribute("people", people);

%>

<ul>
    <li>${person.id}</li>
    <li>${person.firstName}</li>
    <li>${person.lastName}</li>
    <li>${person.age}</li>

</ul>
</body>
</html>