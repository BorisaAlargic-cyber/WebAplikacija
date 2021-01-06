<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Please fill out the blanks so we can register your apartment!</h2>
	<form>
		<table >
			<tr>
				<td>
					<label for="apartmentType">Apartment Type:  </label>
					<select id="apartmentType" name="apartmentType">
						<option>Apartment</option>
						<option>Room</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label for="roomCount">Room count: </label>
					<input id = " roomCount" type="number" name="roomCount">
				</td>
			</tr>
			<tr>
				<td>
					<label for="guestCount">Guest count: </label>
					<input id = " guestCount" type="number" name="guestCount">
				</td>
			</tr>
			<tr>
				<td>
					<label for="slobodniDatumi">Availabel Dates: </label>
					<input id = " slobodniDatumi" type="date" name="AvailabelDa">
				</td>
			</tr>
			<tr>
				<td>
					<label for="hostName">Name of host: </label>
					<input id = " hostName" type="text" name="hostName">
				</td>
			</tr>
			<tr>
				<td>
					<label for="comment">Comment: </label>
					<textarea id="comment" name="Comment"  >Leave your comment here!</textarea>
					
				</td>
				
			</tr>
		</table>
	</form>
</body>
</html>