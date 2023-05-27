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
	

public static List<Usuario> getAllUsuarios(){
	List<Usuario> list = new ArrayList<Usuario>();
	try {
		Connection con = getConnection();
		PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			Usuario usuario = new Usuario();
			usuario.setId(rs.getInt("id"));
			usuario.setEmail(rs.getString("email"));
			usuario.setSenha(rs.getString("senha"));
			usuario.setNumero(rs.getInt("numero"));
			usuario.setEndereco(rs.getString("endereco"));
			usuario.setCep(rs.getInt("cep"));
			list.add(usuario);
			
		}
	}catch(Exception e) {
		System.out.print(e);
	}
	 return list;	
}

}
