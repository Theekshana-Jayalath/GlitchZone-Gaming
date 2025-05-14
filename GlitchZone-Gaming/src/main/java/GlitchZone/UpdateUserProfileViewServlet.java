package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateUserProfileViewServlet")
public class UpdateUserProfileViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user ID from request parameter
        String userId = request.getParameter("id");
        
        if (userId != null && !userId.isEmpty()) {
            // Retrieve user details by ID
            List<UserProfileModel> userDetails = UserProfileController.getById(userId);
            
            
            if (userDetails != null && !userDetails.isEmpty()) {
                // Set the user object as an attribute in the request
                request.setAttribute("user", userDetails.get(0));
                
                // Forward to the view page
                RequestDispatcher dispatcher = request.getRequestDispatcher("UserProfileView.jsp");
                dispatcher.forward(request, response);
            } else {
                // Handle case when user is not found
                response.getWriter().println("<script>alert('User not found!'); window.location.href='UserProfileView.jsp';</script>");
            }
        } else {
            // Redirect to home page or login page if no ID is provided
            response.sendRedirect("UserLogin.jsp");
        }
    }}

  