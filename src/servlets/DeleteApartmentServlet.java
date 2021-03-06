package servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Apartment;
import dao.ApartmentDAO;

/**
 * Servlet implementation class DeleteApartmentServlet
 */
@WebServlet("/DeleteApartmentServlet")
public class DeleteApartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteApartmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long id = Long.parseLong(request.getParameter("apartmentId"));
		
		ServletContext context = getServletContext();
        String contextPath = context.getRealPath("");
        
        ApartmentDAO apartmentDao = new ApartmentDAO(contextPath);
        Apartment apartment = apartmentDao.findByID(id);
        apartment.setDeleted(true);
        apartmentDao.update(apartment);
		
		response.sendRedirect("/WebProgramiranje-master/ApartmentListServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
