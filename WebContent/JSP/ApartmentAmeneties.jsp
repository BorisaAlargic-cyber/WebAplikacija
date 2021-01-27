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

	<table>
		<tr>
			<th>Name</th>
		</tr>
		<c:forEach items="${requestScope.apartment.amenities}" var="amenetie">
			<tr>
				<td><c:out value="${amenetie.name}"/></td>
			</tr>
			
		</c:forEach>
	</table>
	
	<form action="/WebProgramiranje-master/ApartmentAmenetiesServlet" method="post">
		<input type="hidden" name="apartmentId" value="${requestScope.apartment.id}">
		<select name="amenetieId" >
			<c:forEach items="${requestScope.ameneties}" var="item">
				<option value="${item.id}">${item.name}</option>
			</c:forEach>
		</select>
		
		<input type="submit" value="Add">
	</form>
	
</body>
</html>