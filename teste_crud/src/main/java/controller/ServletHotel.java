
package controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContatoDao;
import model.Quarto;
import model.QuartoDao;
import model.ReservaQuarto;
import model.ReservaQuartoDao;
import model.Contato;
import model.Usuario;
import model.UsuarioDao;




/**
 * Servlet implementation class ServletCarros
 */
@WebServlet("/ServletHotel")
public class ServletHotel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDao u1;
	private ContatoDao c1;
	private ReservaQuartoDao r1;
	private QuartoDao q1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	// MÉTODO SUPER.
	
	public ServletHotel() {
		super();
		this.u1 = new UsuarioDao();
		this.c1 = new ContatoDao();
		this.r1 = new ReservaQuartoDao();
		this.q1 = new QuartoDao();
	}
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// PADRÃO PARA TESTAR SERVLET: Mensagem generica!!
		//response.getWriter().append("Tá funcionando parceiro: ").append(request.getContextPath());
			
		
		
		
		doPost(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		// PADRÃO PARA TESTAR SERVLET: Mensagem generica!!
		//doGet(request, response);
		
		
		String option = request.getParameter("btnOption");
		
		
		if (null == option) {
			MostraTelaInicial(request, response);
		} else {
			switch (option) {
			case "enviaContato":
				enviaContato(request, response);
				break;
			case "enviaUsuario":
				enviaUsuario(request, response);
				break;
			case "loginUsuario":
				loginUsuario(request, response);
				break;
			case "enviaReserva":
				enviaReserva(request,response);
				break;
			case "criaReservaForm":
				criaReservaForm(request, response);
				break;
			default:
				MostraTelaInicial(request, response);
				break;
			}
		}
		
			
		
		

		
	}
	
	
	
//	private void MostraTelaLogin (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.sendRedirect("login.jsp");
//		
//	}
	
	private void MostraTelaInicial (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
		disp.forward(request, response);
		
	}

	private void enviaContato (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("txtEmailContato");
		Integer telefone = Integer.parseInt(request.getParameter("txtTelefoneContato"));
		String nome = request.getParameter("txtNomeContato");
		String sobreNome = request.getParameter("txtSobreNomeContato");
		String observacao = request.getParameter("txtObservacaoContato");
		Contato c1 = new Contato(email, telefone, nome, sobreNome, observacao);
		
		this.c1.insereContato(c1);
		
		response.sendRedirect("ServletHotel");
		
	}
	
	private void enviaUsuario (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("txtEmailUsuarioCadastro");
		String senha = request.getParameter("txtSenhaUsuarioCadastro");
		String numero = request.getParameter("txtNumeroUsuarioCadastro");
		String endereco = request.getParameter("txtEnderecoUsuarioCadastro");
		String cep = request.getParameter("txtCepUsuarioCadastro");
		Usuario u1 = new Usuario (email, senha, numero, endereco, cep);
		this.u1.insereUsuario(u1);
		
		response.sendRedirect("ServletHotel");
		
	}
	
	private void loginUsuario (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("txtEmailUsuarioLogin");
		String senha = request.getParameter("txtSenhaUsuarioLogin");
		Usuario usuariologin = this.u1.loginUsuario(email, senha);
		
		if (null != usuariologin) {
			RequestDispatcher disp = request.getRequestDispatcher("login-realizado.jsp");
			request.setAttribute("usuarioLogado", usuariologin);
			disp.forward(request, response);
		} else {
			RequestDispatcher disp = request.getRequestDispatcher("login-falha.jsp");
			disp.forward(request, response);
		}
		
		
	}
	
	private void enviaReserva (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("txtEmailReserva");
		Integer quarto = Integer.parseInt(request.getParameter("txtQuartoReserva"));
		ReservaQuarto reserva = new ReservaQuarto(email, quarto);
		
		this.r1.insereReserva(reserva);
		
		response.sendRedirect("ServletHotel");
		
	}
	
	private void criaReservaForm (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listaQuartos", this.q1.selecionaTodosQuartos());
		RequestDispatcher disp = request.getRequestDispatcher("cria-reserva.jsp");
		disp.forward(request, response);
	}

}



