package GlitchZone;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UserProfileServlet
 */
@WebServlet("/UserProfileServlet")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserProfileModel user = (UserProfileModel)request.getSession().getAttribute("user");
		
		if(user != null) {
			//Forward user data to profile.jsp
			request.setAttribute("user", user);
			request.getRequestDispatcher("UserProfileView.jsp").forward(request, response);
		}
		else {
			//Handle case where user is not logged in
			response.sendRedirect("UserLogin.jsp");	
		}
	}
}