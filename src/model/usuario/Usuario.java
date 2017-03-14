package model.usuario;

public class Usuario {

private int id;	
private String cpfUsuario;
private String	nomeUsuario; 
private String senhaUsuario;
private String enderecoUsuario;
private TipoUsuario tipoUsuario;

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
