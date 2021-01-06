<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Izmena passworda</title>
</head>
<form action="/WebProgramiranje-master/ChangePasswordServlet" method="POST">
<body>
	<table>
	<tr>
		<td>Password</td>
		<td><input type="password" name ="password"  required/></td>
	</tr>

	<tr>
		<td>Confirm Password</td>
		<td><input type="password" name ="password1" required/></td>
	</tr>
	<tr><td><input type="submit" name = "Potvrdi"></td></tr>
	</table>
</body>
</form>
	<a href="/WebProgramiranje-master/index.jsp" >Nazad </a>
</html>