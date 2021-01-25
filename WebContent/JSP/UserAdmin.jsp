<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="UserAdminServlet" method="get">
	<input type="text" name="search">
	<input type="submit" value="Search">
</form>

<table >
	<tr>
		<th>Username</th>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Email</th>
		<th>Gender</th>
		<th>Role</th>
	</tr>

    <c:forEach items="${requestScope.users}" var="user">
        <tr>
            <td><c:out value="${user.username}"/></td> 
            <td><c:out value="${user.firstName}"/></td>
            <td><c:out value="${user.lastName}"/></td>
            <td><c:out value="${user.email }"/></td>
            <td><c:out value="${user.gender }"/></td>
            <td><c:out value="${user.role }"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>