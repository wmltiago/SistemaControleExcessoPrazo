package model.detento;

import java.util.Date;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;


import model.presidio.Presidio;

public class Detento {

	private int idDetento;
	private Presidio presidio;
	
	@NotEmpty(message="O NOME DO DETENTO deve ser preenchido!")
	@Size(min = 4, max = 120, message="O nome do detento deve ter minímo de 4 a no máximo 120 caracteres")
	private String nomeDetento;
	
	@NotEmpty(message="O CPF deve ser preenchido")
	@Size(min = 11, max = 11, message="O CPF dever ter um tamanho de 11 caracteres")
	private String cpfDetento;
	
	@NotEmpty(message="O NOME DA MÃE deve ser preenchido!")
	@Size(min = 4, max = 120, message="O nome da mãe deve ter minímo de 4 a no máximo 120 caracteres")
	private String nomeMae;
	private String enderecoDetento;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dataJulgamento;
	private int liberdadeProvisoria;
	private String numeroProcesso;
	private String fotoDetento;
	
	
	
	public int getIdDetento() {
		return idDetento;
	}
	public void setIdDetento(int idDetento) {
		this.idDetento = idDetento;
	}
	public Presidio getPresidio() {
		return presidio;
	}
	public void setPresidio(Presidio presidio) {
		this.presidio = presidio;
	}
	public String getNomeDetento() {
		return nomeDetento;
	}
	public void setNomeDetento(String nomeDetento) {
		this.nomeDetento = nomeDetento;
	}
	public String getCpfDetento() {
		return cpfDetento;
	}
	public void setCpfDetento(String cpfDetento) {
		this.cpfDetento = cpfDetento;
	}
	public String getNomeMae() {
		return nomeMae;
	}
	public void setNomeMae(String nomeMae) {
		this.nomeMae = nomeMae;
	}
	public String getEnderecoDetento() {
		return enderecoDetento;
	}
	public void setEnderecoDetento(String enderecoDetento) {
		this.enderecoDetento = enderecoDetento;
	}
	public Date getDataJulgamento() {
		return dataJulgamento;
	}
	public void setDataJulgamento(Date dataJulgamento) {
		this.dataJulgamento = dataJulgamento;
	}
	public int getLiberdadeProvisoria() {
		return liberdadeProvisoria;
	}
	public void setLiberdadeProvisoria(int liberdadeProvisoria) {
		this.liberdadeProvisoria = liberdadeProvisoria;
	}
	public String getNumeroProcesso() {
		return numeroProcesso;
	}
	public void setNumeroProcesso(String numeroProcesso) {
		this.numeroProcesso = numeroProcesso;
	}
	public String getFotoDetento() {
		return fotoDetento;
	}
	public void setFotoDetento(String fotoDetento) {
		this.fotoDetento = fotoDetento;
	}
	
	
	
	
	
}
