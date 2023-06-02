package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dao.ConexaoBD;

public class ContatoDao {
	
	public void insereContato(Contato contato) {
			
			ConexaoBD c = ConexaoBD.getInstance();
			
			Connection con = c.getConnection();
			
			try {
	
				PreparedStatement ps = con.prepareStatement("INSERT INTO tb_contato (email, telefone, nome_contato, sobrenome_contato, observacao) values (?, ?, ?, ?, ?)");
				ps.setString(1, contato.getEmailContato());
				ps.setInt(2, contato.getTelefoneContato());
				ps.setString(3, contato.getNomeContato());
				ps.setString(4, contato.getSobrenomeContato());
				ps.setString(5, contato.getObservacao());
				ps.executeUpdate();
				System.out.println("contato inserido com sucesso!: " + ps);
				ps.close();
				
				
			}catch(Exception e) {
				System.out.println("Falha ao inserir contato na tabela!: " + e.getMessage());
			}
		}

}
