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
			<a href="/WebProgramiranje-master/UserAdminServlet">Users</a>
		    <a href="/WebProgramiranje-master/LogoutServlet">Logout</a>
	    </c:when>
	    <c:otherwise>
	    	<a href="/WebProgramiranje-master/LoginServlet">Login</a>
			<a href="/WebProgramiranje-master/RegisterServlet">Registracija</a>
	    </c:otherwise>
			
	</c:choose>
</div>

<h3>WebShop</h3>

<p>
<a href="LoginServlet"><b>Uloguj se</b></a> Demonstracija MVC Model 2 tehnologije.
Servlet <code>LoginServlet</code> obavlja posao dispečera. Svaka operacija prijavljivanja
ili odjavljivanja na sistem ide preko ovog servleta. Ako je korisnik uneo odgovarajuće
korisničko ime i šifru (proba/proba) prijavljivanje na sistem je uspelo i servlet
redirektuje stranicu na <code>results.jsp</code>.
</p>

</body>
</html>
