package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import dao.EmplDAO;
import entity.Employee;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher = null;
	DAO employeeDAO = null;
	
	public Controller() {
		employeeDAO = new EmplDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listEmployee(request, response);
				break;
				
			case "EDIT":
				getSingleEmployee(request, response);
				break;
				
			case "DELETE":
				deleteEmployee(request, response);
				break;
				
			default:
				listEmployee(request, response);
				break;
				
		}
		
	}

	private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
	
		if(employeeDAO.delete(Integer.parseInt(id))) {
			request.setAttribute("NOTIFICATION", "Funcion�rio deletado!");
		}
		
		listEmployee(request, response);
	}

	private void getSingleEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");
		
		Employee theEmployee = employeeDAO.get(Integer.parseInt(id));
		
		request.setAttribute("employee", theEmployee);
		
		dispatcher = request.getRequestDispatcher("/views/employee-form.jsp");
		
		dispatcher.forward(request, response);
	}

	private void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Employee> theList = employeeDAO.get();
		
		request.setAttribute("list", theList);
		
		dispatcher = request.getRequestDispatcher("/views/employee-list.jsp");
		
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		Employee e = new Employee();
		e.setName(request.getParameter("name"));
		e.setDepartment(request.getParameter("department"));
		e.setDob(request.getParameter("dob"));
		
		if(id.isEmpty() || id == null) {
			
			if(employeeDAO.save(e)) {
				request.setAttribute("NOTIFICATION", "Funcion�rio registrado com sucesso!");
			}
		
		}else {
			
			e.setId(Integer.parseInt(id));
			if(employeeDAO.update(e)) {
				request.setAttribute("NOTIFICATION", "Funcion�rio atualizado com sucesso!");
			}
			
		}
		
		listEmployee(request, response);
	}

}
