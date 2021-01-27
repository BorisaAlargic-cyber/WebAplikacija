<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Ameneties</title>
</head>
<body>
	<form action="/WebProgramiranje-master/AddAmenetiesServlet" method="POST">
		<table>
			<tr>
				<td>Name of the item</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Dodaj"></td>	
			</tr>
		</table>
	</form>
	
</body>
</html>