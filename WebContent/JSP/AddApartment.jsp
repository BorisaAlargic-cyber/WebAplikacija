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

<form action="/WebProgramiranje-master/AddApartmentServlet" method="POST">
<table>
	<tr>
		<td>Apartmant Type</td>
		<td>
			<select name="apartmentType" required>
	  			<option value="APARTMAN"  >Apartment</option>
	  			<option value="SOBA">Room</option>
			</select>
		</td>		
	</tr>
	<tr>
		<td>Rooms count</td>
		<td><input type="number" name ="roomsCount"required/></td>
	</tr>
	<tr>
		<td>Guest count</td>
		<td><input type="number" name ="guestCount" required/></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name ="address" required/></td>
	</tr>
	<tr>
		<td>Number</td>
		<td><input type="number" name ="number" required/></td>
	</tr>
	<tr>
		<td>City</td>
		<td><input type="text" name ="city" required/></td>
	</tr>
	<tr>
		<td>Zip code</td>
		<td><input type="text" name ="zipCode" required/></td>
	</tr>
	<tr>
		<td>Latitude</td>
		<td><input type="number" name ="lat" required/></td>
	</tr>
	<tr>
		<td>Longitude</td>
		<td><input type="number" name ="lng" required/></td>
	</tr>
	<tr>
		<td>Price per night</td>
		<td><input type="number" name ="pricePerNight" required/></td>
	</tr>
	<tr>
		<td>Check in time</td>
		<td><input type="time" name ="checkInTime" required/></td>
	</tr>
	<tr>
		<td>Check out time</td>
		<td><input type="time" name ="checkOutTime" required/></td>
	</tr>		
	
	<tr>
		<td><input type="submit" value="Izmeni"></td>	
	</tr>
	</table>
	</form>
	<a href="/WebProgramiranje-master/index.jsp" >Nazad </a>
</body>
</html>