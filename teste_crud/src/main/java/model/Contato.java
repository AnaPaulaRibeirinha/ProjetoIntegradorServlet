package model;

public class Contato {
	private int idContato;
	private String emailContato; 
	private int telefoneContato;
	private String nomeContato; 
	private String sobrenomeContato;
	private String observacao;
	

	public Contato(String emailContato, int telefoneContato, String nomeContato, String sobrenomeContato,
			String observacao) {
		super();
		this.emailContato = emailContato;
		this.telefoneContato = telefoneContato;
		this.nomeContato = nomeContato;
		this.sobrenomeContato = sobrenomeContato;
		this.observacao = observacao;
	}

	public int getIdContato() {
		return idContato;
	}

	public void setIdContato(int idContato) {
		this.idContato = idContato;
	}

	public String getEmailContato() {
		return emailContato;
	}

	public void setEmailContato(String emailContato) {
		this.emailContato = emailContato;
	}

	public int getTelefoneContato() {
		return telefoneContato;
	}

	public void setTelefoneContato(int telefoneContato) {
		this.telefoneContato = telefoneContato;
	}

	public String getNomeContato() {
		return nomeContato;
	}

	public void setNomeContato(String nomeContato) {
		this.nomeContato = nomeContato;
	}

	public String getSobrenomeContato() {
		return sobrenomeContato;
	}

	public void setSobrenomeContato(String sobrenomeContato) {
		this.sobrenomeContato = sobrenomeContato;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	
	
	
	
}
