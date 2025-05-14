package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateUserProfileServlet")
public class UpdateUserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
    	String lname = request.getParameter("lname");
    	String email = request.getParameter("email");
    	String country = request.getParameter("country");
    	String uName = request.getParameter("uName");
    	String password = request.getParameter("password");
    	
    	boolean isTrue;
    	isTrue = UserProfileController.updateProfile(id, fname, lname, email, country, uName, password);
   		
    	if(isTrue == true) {
    		List<UserProfileModel> userDetails = UserProfileController.getById(id);
       		request.setAttribute("profileDetails", userDetails);
       		
    		String alertMessage = "Data Update Successful";
       		response.getWriter().println("<script> alert('"+alertMessage+"');window.location.href = 'UpdateUserProfileViewServlet?id="+id+"'</script>");
      	  		
       	}
       	else {
       		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
       		dis2.forward(request, response);
       		//dis2.forward(request, response);
}			
	}

}