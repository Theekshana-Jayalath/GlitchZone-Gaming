package GlitchZone;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        if (UserProfileController.isEmailRegistered(email)) {
            HttpSession session = request.getSession();
            session.setAttribute("resetEmail", email);
            response.sendRedirect("ChangePassword.jsp");
        } else {
            request.setAttribute("error", "Invalid email");
            RequestDispatcher rd = request.getRequestDispatcher("ForgotPassword.jsp");
            rd.forward(request,response);
}
}
}