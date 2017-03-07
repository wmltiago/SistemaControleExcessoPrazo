CREATE TABLE detento (
	idDetento INT NOT NULL auto_increment,
	nomeDetento varchar(120) NOT NULL,
	cpfDeteneto varchar(120) NOT NULL UNIQUE,
	nomeMae varchar(120) NOT NULL,
	nomeMae varchar(120) NOT NULL,
	enderecoDetento varchar(120) NOT NULL,
	fotoDetento varchar(120) NOT NULL,
	PRIMARY KEY (idDetento)
);

CREATE TABLE dadosdetento (
	idDadosdetento INT NOT NULL auto_increment,
	detento_idDetento INT NOT NULL,
	presidio_idPresidio INT NOT NULL,
	dataJulgamento DATE NOT NULL,
	liberdadeProvisoria INT(1) NOT NULL,
	numeroProcesso varchar(50) NOT NULL,
	PRIMARY KEY (idDadosdetento)
);

CREATE TABLE presidio (
	idPresidio INT NOT NULL auto_increment,
	nomePresidio varchar(120) NOT NULL,
	estadoPresidio varchar(50) NOT NULL,
	cidadePresidio varchar(50) NOT NULL,
	tipoPresidio enum ('aberto', 'fechado', 'semiAberto'),
	PRIMARY KEY (idPresidio)
);

CREATE TABLE Pena (
	idPEna INT NOT NULL auto_increment,
	detento_idDetento INT NOT NULL,
	tipoPena varchar(100) NOT NULL,
	descricaoPena varchar(100) NOT NULL,
	tempoPena varchar(50) NOT NULL,
	regime varchar(50) NOT NULL,
	multa FLOAT NOT NULL,
	prestacaoServico INT NOT NULL,
	PRIMARY KEY (idPEna)
);

CREATE TABLE usuario (
	idUsuario INT NOT NULL auto_increment,
	tipousuario_idTipousuario INT NOT NULL,
	nomeUsuario varchar(120) NOT NULL,
	cpfUsuario varchar(15) NOT NULL UNIQUE,
	enderecoUsuario varchar(120) NOT NULL,
	PRIMARY KEY (idUsuario)
);

CREATE TABLE tipousuario (
	idTipousuario INT NOT NULL auto_increment,
	descricaoUsuario varchar(50) NOT NULL,
	PRIMARY KEY (idTipousuario)
);

ALTER TABLE dadosdetento ADD CONSTRAINT dadosdetento_fk0 FOREIGN KEY (detento_idDetento) REFERENCES detento(idDetento);

ALTER TABLE dadosdetento ADD CONSTRAINT dadosdetento_fk1 FOREIGN KEY (presidio_idPresidio) REFERENCES presidio(idPresidio);

ALTER TABLE Pena ADD CONSTRAINT Pena_fk0 FOREIGN KEY (detento_idDetento) REFERENCES detento(idDetento);

ALTER TABLE usuario ADD CONSTRAINT usuario_fk0 FOREIGN KEY (tipousuario_idTipousuario) REFERENCES tipousuario(idTipousuario);

