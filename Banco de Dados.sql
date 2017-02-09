CREATE TABLE presidio (
	id_presidio int(1) NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	estado varchar(40) NOT NULL,
        cidade varchar(50) NOT NULL,
	tipo varchar(50) NOT NULL,
	PRIMARY KEY (id_presidio)
);



CREATE TABLE usuario (
	id_usuario int not null auto_increment,
	nome varchar not null,
	cpf int(15) not null unique,
	senha varchar(15) not null,
	endereco varchar(120) not null,
	id_tipousuario int(1) not null,
	PRIMARY KEY (id_usuario)
);



create table tipousuario (
 id_tipousuario int(1) not null,
 descricao varchar(15) not null,
 primary key (id_tipousuario)
);

ALTER TABLE usuario ADD constraint usuario_fk0 foreign key (id_tipousuario) references tipousuario(id_tipousuario);
