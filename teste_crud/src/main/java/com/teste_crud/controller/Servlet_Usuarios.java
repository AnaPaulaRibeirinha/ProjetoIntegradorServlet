
package com.teste_crud.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teste_crud.bean.*;
import com.teste_crud.dao.UsuarioDao;

public class Servlet_Usuarios {


/**
 * Servlet implementation class ServletCarros
 */
@WebServlet("/Servlet_Usuarios")
public class ServletCarros extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO c1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_Usuarios() {
        super();
        // TODO Auto-generated constructor stub
        this.c1 = new UsuarioDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		doPost(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		String option = request.getParameter("btnOption");
		
		if (option == null) {
			option = "mostraCarros";
		}
		switch (option) {
		case "criarCarro":
			criarUsuario(request, response);
			break;
		case "novoForm":
			novoForm(request, response);
			break;
		case "updateForm":
			updateForm(request, response);
			break;
		default:
			mostraCarros(request, response);
		}
		

		
	}

	private void novoForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
		disp.forward(request, response);
	}
	
	private void updateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(request.getParameter("txtId"));
		Usuario car1 = this.c1.selecionaUsuario(id);
		
		RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
		
		request.setAttribute("usuario", car1);
		disp.forward(request, response);
		
	}
	
	private void criarUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String model = request.getParameter("txtModel");
		Integer ano = Integer.parseInt(request.getParameter("txtAno"));
 		Carro car1 = new Usuario(id, email, senha, numero, endereco, cep);
		this.c1.insereCarro(car1);
		
		response.sendRedirect("Servlet_Usuarios");
	}
	


	
	private void mostraCarros(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append(this.cont.getListUser().toString());
		
		request.setAttribute("listUsuario", this.c1.selecionaTodosCarros());
		RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
		disp.forward(request, response);
		

	}
	
}


}
