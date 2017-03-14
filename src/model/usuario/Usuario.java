package model.usuario;

public class Usuario {

private int id;	
private String cpfUsuario;
private String	nomeUsuario; 
private String senhaUsuario;
private String enderecoUsuario;
private TipoUsuario tipousuario_idTipousuario;

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
public TipoUsuario getTipousuario_idTipousuario() {
	return tipousuario_idTipousuario;
}
public void setTipousuario_idTipousuario(TipoUsuario tipousuario_idTipousuario) {
	this.tipousuario_idTipousuario = tipousuario_idTipousuario;
}



	
}
