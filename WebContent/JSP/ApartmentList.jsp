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
<form action="ApartmentListServlet" method="get">
	<input type="text" name="search">
	<select name="sort">
		<option value="CITY">City</option>
		<option value="ADDRESS">Address</option>
		<option value="FIRST_NAME">First Name</option>
		<option value="LAST_NAME">Last Name</option>
	</select>
	<input type="submit" value="Search">
</form>

<table >
	<tr>
		<th>Room count</th>
		<th>Street</th>
		<th>Number</th>
		<th>City</th>
		<th>Zip Code</th>
		<th>Add dates</th>
	</tr>

    <c:forEach items="${requestScope.apartments}" var="apartment">
        <tr>
        <td><c:out value="${apartment.roomsCount}"/></td>
            <td><c:out value="${apartment.location.address.street}"/></td> 
            <td><c:out value="${apartment.location.address.number}"/></td>
            <td><c:out value="${apartment.location.address.city}"/></td>
            <td><c:out value="${apartment.location.address.zipCode}"/></td>
            <td><c:out value="${apartment.status}"/></td>
            <td>
            	<a href="/WebProgramiranje-master/FreeApartmentDates?apartmentId=${apartment.id}">Add dates</a>
            </td>
            <td>
            	<a href="/WebProgramiranje-master/EditApartmentServlet?apartmentId=${apartment.id}">Edit</a>
            </td>
            <td>
            	<a href="/WebProgramiranje-master/DeleteApartmentServlet?apartmentId=${apartment.id}">Delete</a>
            </td>
            <td>
            	<a href="/WebProgramiranje-master/ApartmentAmenetiesServlet?apartmentId=${apartment.id}">Add ameneties</a>
            </td>
             <td>
             	<c:choose>
	             	<c:when test = "${apartment.status == 'ACTIVE'}">
	             		<a href="/WebProgramiranje-master/DeactiveApartmentServlet?apartmentId=${apartment.id}">Deactivate</a>
	            	</c:when>
	            	<c:otherwise>
	            	 	<a href="/WebProgramiranje-master/ActiveApartmentServlet?apartmentId=${apartment.id}">Active</a>
	            	</c:otherwise>
             	</c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>