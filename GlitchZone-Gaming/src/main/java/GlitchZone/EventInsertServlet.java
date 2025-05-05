package GlitchZone;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventInsertServlet")
public class EventInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get form data
		String name = request.getParameter("name");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		String description = request.getParameter("description");
		String player_type = request.getParameter("player_type");
		String reward_type = request.getParameter("reward_type");
		String entry_fee = request.getParameter("entry_fee");
		
		
		boolean isTrue;
		
		isTrue = EventController.insertdata(name, start_date, end_date, description, player_type, reward_type, entry_fee);
		
		if(isTrue == true) {
			String alertMessage = "Data insert successfull";
			response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href='success.jsp' </script>");
			
		} else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
}
