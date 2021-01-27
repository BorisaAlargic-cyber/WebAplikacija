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
	<h1>Add Apartment</h1>

<form action="/WebProgramiranje-master/EditApartmentServlet" method="POST">
<input type="hidden" name="apartmentId" value="${requestScope.apartment.id}">
<table>
	<tr>
		<td>Apartmant Type</td>
		<td>
			<select name="apartmentType" required>
	  			
	  			<c:choose>
	  				<c:when test="${requestScope.apartment.type == 'APARTMAN'}">
	  					<option value="APARTMAN" selected>Apartment</option>
	  				</c:when>
	  				<c:otherwise>
	  					<option value="APARTMAN">Apartment</option>
	  				</c:otherwise>
	  			</c:choose>
	  			
	  			<c:choose>
	  				<c:when test="${requestScope.apartment.type == 'SOBA'}">
	  					<option value="SOBA" selected>SOBA</option>
	  				</c:when>
	  				<c:otherwise>
	  					<option value="SOBA">Room</option>
	  				</c:otherwise>
	  			</c:choose>
			</select>
		</td>		
	</tr>
	<tr>
		<td>Rooms count</td>
		<td><input type="number" name ="roomsCount" required value="${requestScope.apartment.roomsCount}"/></td>
	</tr>
	<tr>
		<td>Guest count</td>
		<td><input type="number" name ="guestCount" required value ="${requestScope.apartment.guestCount }"/></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name ="address" required value ="${requestScope.apartment.location.address.street }"/></td>
	</tr>
	<tr>
		<td>Number</td>
		<td><input type="number" name ="number" required value ="${requestScope.apartment.location.address.number }"/></td>
	</tr>
	<tr>
		<td>City</td>
		<td><input type="text" name ="city" required value ="${requestScope.apartment.location.address.city }"/></td>
	</tr>
	<tr>
		<td>Zip code</td>
		<td><input type="text" name ="zipCode" required value ="${requestScope.apartment.location.address.zipCode }"/></td>
	</tr>
	<tr>
		<td>Latitude</td>
		<td><input type="number" name ="lat" required value ="${requestScope.apartment.location.lat }"/></td>
	</tr>
	<tr>
		<td>Longitude</td>
		<td><input type="number" name ="lng" required value ="${requestScope.apartment.location.lng }"/></td>
	</tr>
	<tr>
		<td>Price per night</td>
		<td><input type="number" name ="pricePerNight" required value ="${requestScope.apartment.pricePerNight }"/></td>
	</tr>
	<tr>
		<td>Check in time</td>
		<td><input type="time" name ="checkInTime" required value ="${requestScope.apartment.checkInTime }"/></td>
	</tr>
	<tr>
		<td>Check out time</td>
		<td><input type="time" name ="checkOutTime" required value ="${requestScope.apartment.checkOutTime}"/></td>
	</tr>		
	
	<tr>
		<td><input type="submit" value="Izmeni"></td>	
	</tr>
	</table>
	</form>
	<a href="/WebProgramiranje-master/index.jsp" >Nazad </a>
</body>
</html>