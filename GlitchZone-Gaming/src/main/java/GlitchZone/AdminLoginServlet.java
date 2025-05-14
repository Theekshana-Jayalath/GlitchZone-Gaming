package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        
	        try {
	            List<AdminModel> adminLogin = UserProfileController.adminLoginValidate(username, password);
	            
	            if (adminLogin != null && !adminLogin.isEmpty()) {
	                HttpSession session = request.getSession();
	                session.setAttribute("admin", adminLogin.get(0));
	                response.sendRedirect("Admin.jsp");
	            } else {
	                String alertMessage = "Invalid Admin Credentials. Please try again.";
	                response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='AdminLogin.jsp';</script>");
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            String alertMessage = "An error occurred. Please try again.";
	            response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='AdminLogin.jsp';</script>");
}
	}

}
