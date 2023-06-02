package model;

public class Quarto {
	private int idQuarto;
	private String dsQuarto; 
	private int qtdQuarto;
	
	public Quarto(String dsQuarto, int qtdQuarto) {
		super();
		this.dsQuarto = dsQuarto;
		this.qtdQuarto = qtdQuarto;
	}
	
	public Quarto(int qtdQuarto) {
		super();
		this.qtdQuarto = qtdQuarto;
	}

	public int getIdQuarto() {
		return idQuarto;
	}

	public void setIdQuarto(int idQuarto) {
		this.idQuarto = idQuarto;
	}

	public String getDsQuarto() {
		return dsQuarto;
	}

	public void setDsQuarto(String dsQuarto) {
		this.dsQuarto = dsQuarto;
	}

	public int getQtdQuarto() {
		return qtdQuarto; 
	}

	public void setQtdQuarto(int qtdQuarto) {
		this.qtdQuarto = qtdQuarto;
	}
	
	
}
