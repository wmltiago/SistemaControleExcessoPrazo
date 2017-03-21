CREATE TABLE detento (
	idDetento INT auto_increment NOT NULL,
	presidio_idPresidio INT NOT NULL,
	nomeDetento varchar(120) NOT NULL,
	cpfDetento varchar(120) NOT NULL UNIQUE,
	nomeMae varchar(120) NOT NULL,
	enderecoDetento varchar(120) NOT NULL,
	dataJulgamento DATE NOT NULL,
	liberdadeProvisoria INT(1) NOT NULL,
	numeroProcesso varchar(50) NOT NULL,
	PRIMARY KEY (idDetento)
);



CREATE TABLE presidio (
	idPresidio INT auto_increment NOT NULL,
	nomePresidio varchar(120) NOT NULL,
	estadoPresidio varchar(50) NOT NULL,
	cidadePresidio varchar(50) NOT NULL,
	tipoPresidio varchar(50) NOT NULL,
	PRIMARY KEY (idPresidio)
);

CREATE TABLE usuario (
	idUsuario INT NOT NULL auto_increment,
	tipousuario_idTipousuario INT NOT NULL,
	nomeUsuario varchar(120) NOT NULL,
	cpfUsuario varchar(15) NOT NULL UNIQUE,
	enderecoUsuario varchar(120) NOT NULL,
	senhaUsuario varchar(15) not null,
	PRIMARY KEY (idUsuario)
);

CREATE TABLE tipousuario (
	idTipousuario INT NOT NULL ,
	descricaoUsuario varchar(50) NOT NULL,
	PRIMARY KEY (idTipousuario)
);


ALTER TABLE detento ADD CONSTRAINT detento_fk0 FOREIGN KEY (presidio_idPresidio) REFERENCES presidio(idPresidio);
ALTER TABLE usuario ADD CONSTRAINT usuario_fk0 FOREIGN KEY (tipousuario_idTipousuario) REFERENCES tipousuario(idTipousuario);

