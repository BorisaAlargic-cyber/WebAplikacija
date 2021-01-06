<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profil</title>
</head>
<body>
	<h1>Profil</h1>

<form action="/WebProgramiranje-master/ProfileServlet" method="POST">
<table>
	<tr>
		<td>Username</td>
		<td><input type="text" name ="username" value="${sessionScope.currentUser.username}" disabled required/></td>
	</tr>
	<tr>
		<td>First name</td>
		<td><input type="text" name ="firstName"value ="${sessionScope.currentUser.firstName}" required/></td>
	</tr>
	<tr>
		<td>Last name</td>
		<td><input type="text" name ="lastName"value = "${sessionScope.currentUser.lastName}" required/></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name ="email"value = "${sessionScope.currentUser.email}" required/></td>
	</tr>		
	<tr>
		<td>Gender</td>
		<td>
			<select name="gender" required>
	  			<option value="MALE"  <c:if test="${sessionScope.currentUser.gender == 'MALE'}">selected</c:if>>Male</option>
	  			<option value="FEMALE" <c:if test="${sessionScope.currentUser.gender == 'FEMALE'}">selected</c:if>>Female</option>
			</select>
		</td>		
	</tr>
	<tr>
		<td><input type="submit" value="Izmeni"></td>	
	</tr>
	</table>
	</form>
	<a href="/WebProgramiranje-master/index.jsp" >Nazad </a>
</body>
</html>