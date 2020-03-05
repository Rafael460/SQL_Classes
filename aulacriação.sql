
-- criação do banco de dados 

CREATE database if not exists faculdade
CHARACTER set latin1
COLLATE latin1_swedish_ci;

use faculdade;


CREATE TABLE tbalunos (
rgm	INT,
nome varchar (50) NOT NULL,
email varchar(50) NOT NULL,
nacimento date NOT NULL,
primary key (rgm)
);

-- ddl 
-- (alter - add / modify) colocando um coluna na tabela 

alter table tbalunos
add sexo char(1)
after nome;

alter table tbalunos
modify sexo char(1) NOT NULL
after nome;

INSERT INTO tbalunos(rgm, nome, sexo, email, nacimento) 
VALUES ( 2087008, "Rafael", "m" , "nois_vila@loka.com", "1992-09-09"),
(202, "Pedro Sousa", "M", "pedroali_@aki.com", "2020-05-10" );

select * from faculdade.tbalunos;

-- criar uma tabela com id_curso (int auto_increment primary key)
-- nome varchar (50) not null
-- duração int not nul
-- periodo varchar (30) not null - pegadinha em usar o varchar.


CREATE TABLE cursos (
id_curso int auto_increment primary key,
Nome varchar (50) NOT NULL,
Duracao int not null,
Periodo varchar (30) not null
);

select * from faculdade.cursos;

