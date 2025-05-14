package GlitchZone;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserInsertServlet")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String fname = request.getParameter("fname");
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String country = request.getParameter("country");
	    String uName = request.getParameter("uName");
	    String password = request.getParameter("password");
	    
	    try {
	        boolean isUsed = UserProfileController.isUserNameOrPasswordUsed(uName, password);

	        if (isUsed) {
	            // Username or password already used
	            String alertMessage = "Username or Password already used, please try different ones.";
	            response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='UserRegister.jsp';</script>");
	        } else {
	            // Not used, proceed to insert
	            boolean isTrue = UserProfileController.insertdata(fname, lname, email, country, uName, password);

	            if (isTrue) {
	                String alertMessage = "Register Successful";
	                // Redirect to home page (change 'homePage.jsp' to your actual home page)
	                response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='UserLogin.jsp';</script>");
	            } else {
	                String alertMessage = "Register Failed";
	                response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='UserRegister.jsp';</script>");
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        String alertMessage = "An error occurred. Please try again.";
	        response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='UserRegister.jsp';</script>");
}
	}


}