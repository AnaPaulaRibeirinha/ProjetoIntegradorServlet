package model;

public class Usuario {
	private int Id;
	private String Email; 
	private String Senha;
	private String Numero;
	private String Endereco;
	private String Cep;
	
	public Usuario(String email, String senha, String numero, String endereco, String cep) {
		super();
		Email = email;
		Senha = senha;
		Numero = numero;
		Endereco = endereco;
		Cep = cep;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getSenha() {
		return Senha;
	}
	public void setSenha(String senha) {
		Senha = senha;
	}
	public String getNumero() {
		return Numero;
	}
	public void setNumero(String numero) {
		Numero = numero;
	}
	public String getEndereco() {
		return Endereco;
	}
	public void setEndereco(String endereco) {
		Endereco = endereco;
	}
	public String getCep() {
		return Cep;
	}
	public void setCep(String cep) {
		Cep = cep;
	}
	

	
}
