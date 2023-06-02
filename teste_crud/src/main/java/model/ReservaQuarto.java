package model;

public class ReservaQuarto {
	private int idReservaQuarto;
	private String emailReserva; 
	private int idQuarto;
	
	public ReservaQuarto(String emailReserva, int idQuarto) {
		super();
		this.emailReserva = emailReserva;
		this.idQuarto = idQuarto;
	}

	public int getIdReservaQuarto() {
		return idReservaQuarto;
	}

	public void setIdReservaQuarto(int idReservaQuarto) {
		this.idReservaQuarto = idReservaQuarto;
	}

	public String getEmailReserva() {
		return emailReserva;
	}

	public void setEmailReserva(String emailReserva) {
		this.emailReserva = emailReserva;
	}

	public int getIdQuarto() {
		return idQuarto;
	}

	public void setIdQuarto(int idQuarto) {
		this.idQuarto = idQuarto;
	}
	
	
	
	
}
