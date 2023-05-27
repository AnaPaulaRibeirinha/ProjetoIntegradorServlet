package com.teste_crud.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import com.mysql.jdbc.PreparedStatement;
import com.teste_crud.bean.Usuario;



public class UsuarioDao {

	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teste_crud","root","");
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
		
}
	
	public static Usuario getRegistroById(int id) {
		Usuario usuario = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt("Id"));
				usuario.setEmail(rs.getString("Email"));
				usuario.setSenha(rs.getString("Senha"));
				usuario.setNumero(rs.getInt("Numero"));
				usuario.setEndereco(rs.getString("Endereco"));
				usuario.setCep(rs.getInt("Cep"));						
						
			}
		}catch(Exception e) {
			System.out.println(e);
		}return usuario;
	}
	

public static List<Usuario> getAllUsuarios(){
	List<Usuario> list = new ArrayList<Usuario>();
	try {
		Connection con = getConnection();
		PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			Usuario usuario = new Usuario();
			usuario.setId(rs.getInt("Id"));
			usuario.setEmail(rs.getString("Email"));
			usuario.setSenha(rs.getString("Senha"));
			usuario.setNumero(rs.getInt("Numero"));
			usuario.setEndereco(rs.getString("Endereco"));
			usuario.setCep(rs.getInt("Cep"));
			list.add(usuario);
			
		}
	}catch(Exception e) {
		System.out.print(e);
	}
	 return list;	
}

}
