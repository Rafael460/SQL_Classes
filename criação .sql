CREATE database IF NOT EXISTs faculdade
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

use faculdade;


CREATE TABLE tbalunos (
rgm	INT,
nome varchar (50) NOT NULL,
email varchar(50) NOT NULL,
nacimento date NOT NULL,
primary key (rgm)
);



