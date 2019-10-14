import java.io.IOException;

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
		
		
		
		// Definindo variaveis
		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		String fullname = firstName + " " + lastName;
		
		Student stu = new Student();
		stu.setName("Daniel");
		stu.setId(001);
		
		// Vetor para ForEach
		String[] brics = {"Brasil", "Russia", "India", "Coreia do Sul", "Africa do Sul"};
		req.setAttribute("countries", brics);
		
		// print on body
		//PrintWriter pw = resp.getWriter();
		//pw.write("My name is " + fullname);
		req.setAttribute("name", fullname);
		req.setAttribute("student", stu);
		RequestDispatcher rdisp = req.getRequestDispatcher("/outputfile.jsp");
		
		// send request object to outputfile.jsp
		
		rdisp.forward(req, resp);
	}
}
