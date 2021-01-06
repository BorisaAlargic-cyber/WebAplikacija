<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Address register </title>
</head>

<body>
	<h1>Fill up your address forum,please.</h1>
	<form>
		<table border="1">
			<tr>
				<td>Name of the street</td>
				<td><input type="text" name="Street"></td>
			</tr>
			<tr>
				<td>Number of the street</td>
				<td><input type="text" name="Number"></td>
			</tr>
			<tr>
				<td>Name of the city</td>
				<td><input type="text" name="City"></td>
			</tr>
			<tr>
				<td>Zip Code</td>
				<td>
					<input type="text" name="zipCode">
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="submit"></td>
			</tr>
		</table>
	</form>

</body>
</html>