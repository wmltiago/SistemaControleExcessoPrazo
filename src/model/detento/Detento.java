package model.detento;

import java.util.Date;

import model.presidio.Presidio;

public class Detento {

	private int idDetento;
	private Presidio presidio;
	private String nomeDetento;
	private String cpfDetento;
	private String nomeMae;
	private String enderecoDetento;
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
