package control;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Cliente;
import persistence.ClienteDao;
import persistence.UtilsBanco;

/**
 * Servlet implementation class ClienteControle
 */
@WebServlet({"/ClienteControle", "/cadcliente", 
	"/conscliente", "/altcliente","/excliente","/listarclientes"})
public class ClienteControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ClienteControle() {
        super();   
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	execute(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
    
    protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getServletPath();
		System.out.println(url);
		
		if (url.equals("/cadcliente")){
			cadastrar(request, response);
		} else {
			if(url.equals("/conscliente")) {
				consultar(request, response);
			}
		}
				
	}
    
    protected void consultar(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		try {
			String cpf = request.getParameter("cpf");
			ClienteDao cd = new ClienteDao();
			Cliente cliente = cd.consultar(cpf);
			if(cliente == null) {
				request.setAttribute("msg", "<div class='alert alert-danger'>Cliente não encontrado</div>");
				request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);;
			} else {
				request.setAttribute("c", cliente);
				request.getRequestDispatcher("cadastrarCliente.jsp").forward(request, response);;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    
    protected void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String cpf = request.getParameter("cpf");
		String telefone = request.getParameter("tel");
		String dataNascimento = request.getParameter("dtnasc");
		String sexo = request.getParameter("rbsexo");
		String logradouro = request.getParameter("logradouro");
		String numero = request.getParameter("numero");
		String cep = request.getParameter("cep");
		String complemento = request.getParameter("complemento");
		String cidade = request.getParameter("cidade");
		String uf = request.getParameter("cbouf");
		String observacoes = request.getParameter("obs");
		
		Cliente c = new Cliente();
		c.setDataCadastro(new GregorianCalendar());
		c.setNome(nome);
		c.setEmail(email);
		c.setCpf(cpf);
		c.setTelefone(telefone);
		c.setDataNascimento(UtilsBanco.converterData(dataNascimento));
		c.setSexo(sexo);
		c.setLogradouro(logradouro);
		c.setNumero(new Integer(numero));
		c.setCep(cep);
		c.setComplemento(complemento);
		c.setCidade(cidade);
		c.setUf(uf);
		c.setObservacoes(observacoes);
		
		System.out.println(c);
		
		ClienteDao cd = new ClienteDao();
		
		try {
			if(cd.cadastrar(c)) {
				request.setAttribute("msg", "Cliente cadastrado com sucesso.");
			} else {
				request.setAttribute("msg", "Erro ao cadastrar cliente.");
			}
			
		} catch (Exception e) {
			request.setAttribute("msg", "Erro ao cadastrar cliente.");
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher("cadastrarCliente.jsp").forward(request, response);
		}
    }
    
}
