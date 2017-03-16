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





ALTER TABLE detento ADD CONSTRAINT detento_fk0 FOREIGN KEY (presidio_idPresidio) REFERENCES presidio(idPresidio);


