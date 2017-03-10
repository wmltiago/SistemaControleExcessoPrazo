package model.usuario;

public class Usuario {

private int id;	
private String cpf;
private String	nome; 
private String senha;
private String endereco;
private TipoUsuario tipousuario;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCpf() {
	return cpf;
}
public void setCpf(String cpf) {
	this.cpf = cpf;
}
public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public String getSenha() {
	return senha;
}
public void setSenha(String senha) {
	this.senha = senha;
}
public String getEndereco() {
	return endereco;
}
public void setEndereco(String endereco) {
	this.endereco = endereco;
}
public TipoUsuario getTipousuario() {
	return tipousuario;
}
public void setTipousuario(TipoUsuario tipousuario) {
	this.tipousuario = tipousuario;
}


	
}
