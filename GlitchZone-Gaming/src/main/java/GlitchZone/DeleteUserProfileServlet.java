package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteUserProfileServlet")
public class DeleteUserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = UserProfileController.deleteData(id);
		if(isTrue == true) {
    		    		
    		String alertMessage = "Data Delete Successful";
       		response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href = 'UserLogin.jsp'</script>");
       	}
       	else {
       		List<UserProfileModel> profileDetails = UserProfileController.getById(id);
       		request.setAttribute("profileDetails", profileDetails);
       		
       		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
       		dis2.forward(request, response);
       	}			
				
	}
}
