import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		String fullname = firstName + lastName;
		System.out.println("My name is " + fullname);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		String fullname = firstName + "" + lastName;
		
		// print on body
		//PrintWriter pw = resp.getWriter();
		//pw.write("My name is " + fullname);
		
		RequestDispatcher rdisp = req.getRequestDispatcher("/outputfile.jsp");
		
		// send request object to outputfile.jsp
		req.setAttribute("fname", firstName);
		
		rdisp.forward(req, resp);
	}
}
