package model.usuario;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Usuario {

private int id;	
@NotEmpty (message="O CPF deve ser prenchido")
@Size(min = 11, max =11, message="O CPF deve ter 11 caracteres")
private String cpfUsuario;

@NotEmpty (message="O nome deve ser preenchido")
@Size(min = 5, max = 7, message="O nome tem que ter no max 7 caracteres")
private String	nomeUsuario; 
private String senhaUsuario;
private String enderecoUsuario;
private TipoUsuario tipoUsuario;
//private TipoUsuarioE tipoUsuarioEnum;

/*
public TipoUsuarioE getTipoUsuarioEnum() {
	return tipoUsuarioEnum;
}
public void setTipoUsuarioEnum(TipoUsuarioE tipoUsuarioEnum) {
	this.tipoUsuarioEnum = tipoUsuarioEnum;
}
*/
public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}
public String getCpfUsuario() {
	return cpfUsuario;
}
public void setCpfUsuario(String cpfUsuario) {
	this.cpfUsuario = cpfUsuario;
}
public String getNomeUsuario() {
	return nomeUsuario;
}
public void setNomeUsuario(String nomeUsuario) {
	this.nomeUsuario = nomeUsuario;
}

public String getSenhaUsuario() {
	return senhaUsuario;
}
public void setSenhaUsuario(String senhaUsuario) {
	this.senhaUsuario = senhaUsuario;
}
public String getEnderecoUsuario() {
	return enderecoUsuario;
}
public void setEnderecoUsuario(String enderecoUsuario) {
	this.enderecoUsuario = enderecoUsuario;
}
public TipoUsuario getTipoUsuario() {
	return tipoUsuario;
}
public void setTipoUsuario(TipoUsuario tipoUsuario) {
	this.tipoUsuario = tipoUsuario;
}




	
}
