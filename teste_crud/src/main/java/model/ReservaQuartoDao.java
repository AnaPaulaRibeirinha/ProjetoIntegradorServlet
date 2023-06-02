package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dao.ConexaoBD;

public class ReservaQuartoDao {
	
	public void insereReserva (ReservaQuarto reserva) {
		
		ConexaoBD c = ConexaoBD.getInstance();
		
		Connection con = c.getConnection();
		
		try {
			
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO tb_reserva_quartos (email_reserva, id_quarto) values (?, ?)");
			ps.setString(1, reserva.getEmailReserva());
			ps.setInt(2, reserva.getIdQuarto());
			
			
			ps.executeUpdate();
			System.out.println("reserva inserida com sucesso!: " + ps);
			ps.close();
			atualizaQtdQuartos(reserva.getIdQuarto());

		}catch(Exception e) {
			System.out.println("Falha ao realizar a reserva na tabela!: " + e.getMessage());
		}
	}
	
	public void atualizaQtdQuartos (Integer idQuarto) {
		
		ConexaoBD c = ConexaoBD.getInstance();
		
		Connection con = c.getConnection();
		
		try {
			
			PreparedStatement ps = con.prepareStatement("update tb_quartos set qtd_quartos = qtd_quartos - 1 where id_quarto = ?");
			ps.setInt(1, idQuarto);
			ps.executeUpdate();
			System.out.println("Atualização de quantidade realizada com sucesso!: " + ps);
			ps.close();
		} catch(Exception e) {
			System.out.println("Falha ao realizar a atualização da quantidade na tabela!: " + e.getMessage());
		}
	}
	
	

}
