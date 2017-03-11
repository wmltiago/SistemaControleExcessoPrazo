package model.presidio;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Presidio {
	
	private  int idPresidio;
	
	//--validação nomePresidio--//
	@NotEmpty(message="O Nome do Presídio deve ser preenchido!")
	@Size(min = 10, max = 50, message="O campo Nome deve deve ter um tamanho de 5 a 50 caracteres")
	private  String nomePresidio;
	
	private String estadoPresidio;
	private String tipoPresidio;
	
	//--validação cidade--//
	@NotEmpty(message="O Nome da Cidade deve ser preenchido!")
	@Size(min = 4, max = 50,  message="O campo Cidade deve deve ter um tamanho de 4 a 50 caracteres")
	private String cidadePresidio;

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

	public String getEstadoPresidio() {
		return estadoPresidio;
	}

	public void setEstadoPresidio(String estadoPresidio) {
		this.estadoPresidio = estadoPresidio;
	}

	public String getTipoPresidio() {
		return tipoPresidio;
	}

	public void setTipoPresidio(String tipoPresidio) {
		this.tipoPresidio = tipoPresidio;
	}

	public String getCidadePresidio() {
		return cidadePresidio;
	}

	public void setCidadePresidio(String cidadePresidio) {
		this.cidadePresidio = cidadePresidio;
	}

	
	
	
	
}
