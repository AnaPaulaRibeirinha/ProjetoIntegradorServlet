package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;


import dao.ConexaoBD;



public class UsuarioDao {

	
	public void insereUsuario(Usuario usuario) {
		
		ConexaoBD c = ConexaoBD.getInstance();
		
		Connection con = c.getConnection();

		try {

			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO tb_usuario (email, senha, nm_telefone, endereco, cep) values (?, ?, ?, ?, ?)");
			ps.setString(1, usuario.getEmail());
			ps.setString(2, usuario.getSenha());
			ps.setString(3, usuario.getNumero());
			ps.setString(4, usuario.getEndereco());
			ps.setString(5, usuario.getCep());
			
			ps.executeUpdate();
			System.out.println("usuario inserido com sucesso!: " + ps);
			ps.close();
		}catch(Exception e) {
			System.out.println("Falha ao inserir usuario na tabela!: " + e.getMessage());
		}
	}
	
	public Usuario loginUsuario(String email, String senha) {
		ConexaoBD c = ConexaoBD.getInstance();
		
		Connection con = c.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM TB_USUARIO WHERE email = ? AND senha = ?");
			ps.setString(1, email);
			ps.setString(2, senha);
			ResultSet rs = ps.executeQuery();
			Usuario u1 = null;
			while (rs.next()) {
				Integer idQuery = rs.getInt("id_usuario");
				String emailQuery = rs.getString("email");
				String senhaQuery = rs.getString("senha");
				String nmTelefone = rs.getString("nm_telefone");
				String endereco = rs.getString("endereco");
				String cep = rs.getString("cep");
				u1 = new Usuario(emailQuery, senhaQuery, nmTelefone, endereco, cep);
				u1.setId(idQuery);
				
			}
			rs.close();
			ps.close();
			
			if (null != u1) {
				System.out.println("login realizado com sucesso! Email: " + email + " e senha: " + senha );
				return u1;
			}
			
		} catch (Exception e) {
			System.out.println("Falha ao encontrar usuario na tabela!: " + e.getMessage());
		}
		
		System.out.println("nenhum usuário encontrado! Email: " + email + " e senha: " + senha );
		
		return null;
	}
	


}
