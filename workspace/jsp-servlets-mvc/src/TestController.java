import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the request dispatcher
		RequestDispatcher rdisp = request.getRequestDispatcher("/test.jsp");
		
		//get the data from model
		String data = TestModel.getData();
		
		//set the data to the request object
		request.setAttribute("data", data);
		
		//forward the request and response back to browser
		rdisp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
