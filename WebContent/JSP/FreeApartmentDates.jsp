<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/WebProgramiranje-master/FreeApartmentDates" method="POST">
		<input type="hidden" name="apartmentId" value="${requestScope.apartmentId}">
		<table>
			<tr>
				<td>From : </td>
				<td><input type = "date" name = "dateFrom"></td>
			</tr>
			<tr>
				<td>To : </td>
				<td><input type = "date" name ="dateTo"></td>
			</tr>
			<tr><td><input type="submit" value="Save"></td></tr>
		</table>
	</form>
</body>
</html>