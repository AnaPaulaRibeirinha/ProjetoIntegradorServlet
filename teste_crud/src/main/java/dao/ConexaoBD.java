package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBD {

	private String url = "jdbc:mysql://localhost:3306/teste_crud";
	private String username = "root";
	private String password = "admin";
	private static Connection connection = null;
	private static ConexaoBD instance = null; // PRIMEIRA PARTE - SINGLETON
	
	private ConexaoBD() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // Iniciar o driver, varia pra cada.
			System.out.println("Driver carregado!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Driver n�o carregado: " + e.getMessage());
		} 
	}
	
	public static ConexaoBD getInstance() { // SEGUNDA PARTE - SINGLETON
		if (instance == null) {
			instance = new ConexaoBD();
			System.out.println("Criando instance...");
		}
		System.out.println("instance criada!");
		return instance;
		
	}
	
	public Connection getConnection() {
		if (connection == null) {
			try {
				connection = DriverManager.getConnection(this.url, this.username, this.password); // Iniciar conex�o
				System.out.println("Conex�o estabelecida!");
				return connection;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Conex�o n�o estabelecida!: " + e.getMessage());
			}
		}
		return connection;
	}
	
	public void finalize() {
		try {
			connection.close();
			connection = null;
			System.out.println("Conex�o finalizada com sucesso! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Conex�o n�o finalizada!: " + e.getMessage());
		}
	}
	
	
}
