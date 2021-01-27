<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/WebProgramiranje-master/EditAmenetieServlet" method="POST">
	<input type="hidden" name="amenetiesId" value="${requestScope.ameneties.id}">
	<table>
		<tr>
			<td>Name</td>
			<td><input type="text" name ="name" required value="${requestScope.ameneties.name}"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Izmeni"></td>
		</tr>
	</table>
</body>
</html>