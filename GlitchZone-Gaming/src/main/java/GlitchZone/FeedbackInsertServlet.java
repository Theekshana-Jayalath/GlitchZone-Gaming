package GlitchZone;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FeedbackInsertServlet")
public class FeedbackInsertServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
   
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String full_name = request.getParameter("full_name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String category = request.getParameter("category");
		String message = request.getParameter("message");
		
		
		boolean isTrue;
		
		isTrue =feedbackController.insertdata(full_name, email, subject, category, message);
		
		if(isTrue == true) {
			String alertMessage = "Data insert successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='feedbackGetAll' </script>");
			
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("EventUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}

