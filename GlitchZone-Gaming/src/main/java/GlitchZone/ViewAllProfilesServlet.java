package GlitchZone;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ViewAllProfilesServlet")
public class ViewAllProfilesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Check if admin is logged in
        if(session.getAttribute("admin") == null) {
            response.sendRedirect("Admin.jsp");
            return;
        }
        
        try {
            // Get all user profiles
            List<UserProfileModel> allProfiles = UserProfileController.getAllProfiles();
            
            // Set the list as an attribute to be accessed in the JSP
            request.setAttribute("allProfiles", allProfiles);
            
            // Forward to the profiles view page
            RequestDispatcher dispatcher = request.getRequestDispatcher("ProfilesView.jsp");
            dispatcher.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            String alertMessage = "An error occurred while retrieving user profiles.";
            response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='AdminHome.jsp';</script>");
}
}
}
