<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <TITLE>Servleti i JSP - WebShop</TITLE>
</HEAD>
<BODY>

<div>
	<c:choose>
		<c:when test = "${not empty sessionScope.currentUser}">
			<a href="/WebProgramiranje-master/ProfileServlet">Profile</a>
			<a href="/WebProgramiranje-master/AddApartmentServlet">Add Apartment</a>
			<a href="/WebProgramiranje-master/ApartmentListServlet">Apartment List</a>
			<a href="/WebProgramiranje-master/ChangePasswordServlet">Izmena passworda</a>
			<a href="/WebProgramiranje-master/AmenetiesListServlet">AmenetiesList</a>
			<a href="/WebProgramiranje-master/AddAmenetiesServlet">Add Ameneties</a>
			<a href="/WebProgramiranje-master/UserAdminServlet">Users</a>
		    <a href="/WebProgramiranje-master/LogoutServlet">Logout</a>
	    </c:when>
	    <c:otherwise>
	    	<a href="/WebProgramiranje-master/LoginServlet">Login</a>
			<a href="/WebProgramiranje-master/RegisterServlet">Registracija</a>
	    </c:otherwise>
			
	</c:choose>
	
	
</div>
<form action="HomeServlet" method="get">
	<input type="text" name="search">
	<select name="sort">
		<option value="CITY">City</option>
		<option value="ADDRESS">Address</option>
		<option value="FIRST_NAME">First Name</option>
		<option value="LAST_NAME">Last Name</option>
	</select>
	<input type="submit" value="Search">
</form>
<div>
<c:forEach items="${requestScope.apartments}" var="apartment">
        <table>
	        <tr>
	            <td><c:out value="${apartment.location.address.street}"/></td> 
	            <td><c:out value="${apartment.location.address.number}"/></td>
	            <td><c:out value="${apartment.location.address.city}"/></td>
	            <td><c:out value="${apartment.location.address.zipCode}"/></td>
	            <td><c:out value="${apartment.status}"/></td>
	        </tr>
	        <tr>
	        	<td colspan="5">
	        		<c:forEach items="${requestScope.comments}" var="comment">
	        			<p>
	        				<c:out value="${comment.text}"/>
	        			</p>
	        		</c:forEach>
	        	</td>
	        </tr>
        </table>
    </c:forEach>
</div>
</body>
</html>
