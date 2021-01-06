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
<h1>Apartment List</h1>

<table >
	<tr>
		<th>Street</th>
		<th>Number</th>
		<th>City</th>
		<th>Zip Code</th>
	</tr>

    <c:forEach items="${requestScope.apartments}" var="apartment">
        <tr>
            <td><c:out value="${apartment.location.address.street}"/></td> 
            <td><c:out value="${apartment.location.address.number}"/></td>
            <td><c:out value="${apartment.location.address.city}"/></td>
            <td><c:out value="${apartment.location.address.zipCode}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>