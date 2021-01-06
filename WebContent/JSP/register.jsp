<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
</head>
<body>
<form action="/WebProgramiranje-master/RegisterServlet" method="POST">

<h1>Registracija</h1>

<table>
	<tr>
		<td>Username</td>
		<td><input type="text" name ="username" required/></td>
	</tr>
	<tr>
		<td>First name</td>
		<td><input type="text" name ="firstName" required/></td>
	</tr>
	<tr>
		<td>Last name</td>
		<td><input type="text" name ="lastName" required/></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name ="email" required/></td>
	</tr>
	
	<tr>
		<td>Password</td>
		<td><input type="password" name ="password" required/></td>
	</tr>
	
	<tr>
		<td>Confirm Password</td>
		<td><input type="password" name ="password1" required/></td>
	</tr>
		
	<tr>
		<td>Gender</td>
		<td>
			<select name="gender" required>
	  			<option value="MALE">Male</option>
	  			<option value="FEMALE">Female</option>
			</select>
		</td>		
	</tr>
	
	<tr><td><input type="submit" value="Login"></td></tr>
</table>
</form>
	<!-- Prikaži grešku, ako je bilo -->
	<% if (request.getAttribute("error") != null) { %>
		<p style="color: red"><%=request.getAttribute("error")%></p>
	<% } %>
</body>
</html>