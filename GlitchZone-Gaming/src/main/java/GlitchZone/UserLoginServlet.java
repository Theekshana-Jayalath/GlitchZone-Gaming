package GlitchZone;

import java.io.IOException;
import java.util.List;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uName = request.getParameter("uName");
		String password = request.getParameter("password");
		
		try {
			List<UserProfileModel> userlogin = UserProfileController.loginValidate(uName, password);

			if (userlogin != null && !userlogin.isEmpty()) {
				
				request.getSession().setAttribute("user", userlogin.get(0));
				response.sendRedirect("homePage.jsp");
				
			} 
			else {
				String alertMessage = "Invalid Credentials,please try again";
			    response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='UserLogin.jsp';</script>");
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}