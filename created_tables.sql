CREATE DATABASE AgendaSus;

create table usuario(
	id int not null auto_increment, 
	login varchar(20), 
	senha varchar(20),  
	primary key(id)
) ENGINE= INNODB;

create table hospital(
	id int not null auto_increment, 
	numero_salas_cirurgia int, 
	numero_leitos int,
	cep int, 
	numero int, 
	nome varchar(30),
	foreign key(cep) references endereco(cep), 
	foreign key(rg) references documento(rg),
	primary key(id)
) ENGINE= INNODB;

create table consultas(
	id int not null auto_increment, 
	id_paciente int not null,
	id_profissional int not null,
    created_at datetime not null default current_timestamp,
    finish_at datetime,
    tipo varchar(30),
	foreign key(id_paciente) references paciente(id),
	foreign key(id_profissional) references profissional(id),
    primary key(id)
) ENGINE= INNODB;

create table profissional(
	id int not null auto_increment, 
 	user_id int, 
    tipo varchar(20),
  	foreign key(user_id) references usuario(id), 
	primary key(id)
) ENGINE= INNODB;

create table paciente(
	id int not null auto_increment, 
	user_id int, 
  	foreign key(user_id) references usuario(id), 
	primary key(id)
) ENGINE= INNODB;

create table pessoa(
	id int not null auto_increment, 
	user_id int, 
	cep int, 
	numero int, 
	complemento varchar(30), 
	sexo char, 
	idade int, 
	telefone int,
	foreign key(cep) references endereco(cep), 
	foreign key(rg) references documento(rg),
	foreign key(user_id) references usuario(id), 
	foreign key(numero) references endereco(numero),
	primary key(id)
 ) ENGINE= INNODB;

create table documento(
	rg integer not null, 
	cpf integer, 
	primary key(rg)
) ENGINE= INNODB;

create table endereco(
	cep int not null,
	numero int not null, 
	rua varchar(30), 
	bairro varchar(30), 
	cidade varchar(30), 
	estado varchar(3), 
	primary key(cep), 
	primary key(numero)
) ENGINE= INNODB;

