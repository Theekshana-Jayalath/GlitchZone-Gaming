
package GlitchZone;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mgInsertServlet")
public class mgInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title= request.getParameter("title");
		String genre= request.getParameter("genre");
		String description= request.getParameter("description");
		String max_players= request.getParameter("max_players");
		String game_mode= request.getParameter("game_mode");
		String release_date= request.getParameter("release_date");
		String file_size= request.getParameter("file_size");
		String free_or_paid= request.getParameter("free_or_paid");
		String price= request.getParameter("price");
		
		boolean isTrue;
		
		isTrue = mgControl.insertdata(title, genre, description, max_players, game_mode, release_date, file_size, free_or_paid, price);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='mgGetAllServlet'</script>");

		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("mgWrong.jsp");
			dis2.forward(request, response);
		}

	}

}