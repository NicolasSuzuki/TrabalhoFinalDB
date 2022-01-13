CREATE DATABASE AgendaSus;

create table usuario(
	id int not null auto_increment, 
	login varchar(20), 
	senha varchar(20),  
	primary key(id)
) ENGINE= INNODB;

create table hospital(
	id int not null auto_increment, 
	numeroSalasCirurgia int, 
	numeroLeitos int,
	numeroLeitosEnfermaria int,
	cep int, 
	numero int, 
	nome varchar(30),
	foreign key(cep) references endereco(cep), 
	foreign key(rg) references documento(rg),
	primary key(id)
) ENGINE= INNODB;

create table consultas(
	id int not null auto_increment, 
	idPaciente int not null,
	idProfissional int not null,
    startedAt datetime not null,
    finishAt datetime not null,
    tipo varchar(30),
	foreign key(idPaciente) references paciente(id),
	foreign key(idProfissional) references profissional(id),
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

create table medico(
	idMedico int not null,
	idProfissional int not null,
	idPessoal int not null,
	idHospital int not null,
	especialidade varchar(60),
    categoria int not null,
    primary key(idMedico),
	foreign key(idProfissional) references profissional(id), 
    foreign key(idPessoal) references paciente(id), 
    foreign key(idHospital) references hospital(id)
) ENGINE = INNODB;
