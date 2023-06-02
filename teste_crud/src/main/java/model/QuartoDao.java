package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.ConexaoBD;

public class QuartoDao {
	
	public ArrayList<Quarto> selecionaTodosQuartos() {
		
		ConexaoBD c = ConexaoBD.getInstance();
		
		Connection con = c.getConnection();
		
		ArrayList<Quarto> listaQuartos = new ArrayList<Quarto>();
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from tb_quartos");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				Integer id = rs.getInt("id_quarto");
				String quarto = rs.getString("ds_quarto");
				Integer qtdQuartos = rs.getInt("qtd_quartos");
				
				
				
				
				Quarto q1 = new Quarto(quarto, qtdQuartos);
				q1.setIdQuarto(id);
			
				listaQuartos.add(q1);
				
			}
			rs.close();
			ps.close();
			
			return listaQuartos;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Falha ao carregar quartos do banco!: " + e.getMessage());
		}
		
		return null;
	}
	
}
