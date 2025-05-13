package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackUpdateServlet")
public class feedbackUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        int FId = Integer.parseInt(request.getParameter("FId").trim());
		String full_name = request.getParameter("full_name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String category = request.getParameter("category");
		String message = request.getParameter("message");
		
		boolean isTrue;
		isTrue =feedbackController.updatedata(FId,full_name, email, subject, category, message);
		
		

		if(isTrue == true) {
			List<feedbackForm> feedbackdetails = feedbackController.getById(FId);
			request.setAttribute("feedbackdetails",feedbackdetails);
			String alertMessage = "Data update successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='feedbackGetAll' </script>");
			
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("EventUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
