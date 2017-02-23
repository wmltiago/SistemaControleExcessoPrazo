package model.presidio;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Presidio {
	
	private  int idPresidio;
	
	//--validação nomePresidio--//
	@NotEmpty(message="O Nome do Presídio deve ser preenchido!")
	@Size(min = 10, max = 50, message="O campo Nome deve deve ter um tamanho de 5 a 50 caracteres")
	private  String nomePresidio;
	
	private String estado;
	private String tipoPresidio;
	
	//--validação cidade--//
	@NotEmpty(message="O Nome da Cidade deve ser preenchido!")
	@Size(min = 4, max = 20,  message="O campo Cidade deve deve ter um tamanho de 5 a 50 caracteres")
	private String cidade;
	
	
	public int getIdPresidio() {
		return idPresidio;
	}
	public void setIdPresidio(int idPresidio) {
		this.idPresidio = idPresidio;
	}
	public String getNomePresidio() {
		return nomePresidio;
	}
	public void setNomePresidio(String nomePresidio) {
		this.nomePresidio = nomePresidio;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getTipoPresidio() {
		return tipoPresidio;
	}
	public void setTipoPresidio(String tipoPresidio) {
		this.tipoPresidio = tipoPresidio;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	
	
	
	
	

}
