package GlitchZone;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("resetEmail") == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        String email = (String) session.getAttribute("resetEmail");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match");
            RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
            rd.forward(request, response);
            return;
        }

        boolean updated = UserProfileController.updatePasswordByEmail(email, newPassword);
        if (updated) {
            session.removeAttribute("resetEmail");
            response.sendRedirect("UserLogin.jsp");
        } else {
            request.setAttribute("error", "Failed to update password");
            RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
            rd.forward(request, response);

}
}
}