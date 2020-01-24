package net.webapp.control;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.webapp.entity.StdLogin;
import net.webapp.entity.User;
import net.webapp.entity.UserDAO;

  /**
	* Servlet implementation class LoginServlet
	*/

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	           throws ServletException, java.io.IOException {

		try	{	    
		
			StdLogin user = new StdLogin();
			user.setUserName(request.getParameter("un"));
			user.setPassword(request.getParameter("pw"));
			
			user = UserDAO.login(user);
					    
			if (user.isValid()) {
			    
				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentSessionUser", user); 
				response.sendRedirect("userLogged.jsp"); //logged-in page      		
			} else {
				response.sendRedirect("invalidLogin.jsp"); //error page 
			}
		} catch (Throwable theException) {
			System.out.println(theException); 
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
	           throws ServletException, java.io.IOException {
		
		StdLogin stduser = new StdLogin();
		User register;
		
		stduser.setUserName(request.getParameter("un"));
		stduser.setPassword(request.getParameter("pw"));
		
		register = UserDAO.newUser(stduser);

		RequestDispatcher rd = request.getRequestDispatcher("/fullform.jsp");
		rd.forward(request,response);
		
	}
}