CREATE DATABASE AgendaSus;

create table usuario(
	id int not null auto_increment, 
	login varchar(20), 
	senha varchar(20),  
	rg int not null,
	nome varchar(30), 
	sexo char, 
	idade int, 
	telefone int,
	primary key(id)
) ENGINE= INNODB;

create table profissional(
	id int not null auto_increment, 
 	userId int, 
    tipo varchar(20),
  	foreign key(userId) references usuario(id), 
	primary key(id)
) ENGINE= INNODB;

create table paciente(
	id int not null auto_increment, 
	userId int, 
  	foreign key(userId) references usuario(id), 
	primary key(id)
) ENGINE= INNODB;

create table medico(
	id int not null auto_increment,
	idProfissional int not null,
	especialidade varchar(60),
    primary key(id),
	foreign key(idProfissional) references profissional(id)
) ENGINE = INNODB;

create table enfermeira(
	id int not null auto_increment,
	idProfissional int not null,
	especialidade varchar(60),
    primary key(id),
	foreign key(idProfissional) references profissional(id)
) ENGINE = INNODB;

create table hospital(
	id int not null auto_increment, 
	numeroSalasCirurgia int, 
	numeroLeitos int,
	numeroLeitosEnfermaria int,
	cep int, 
	numero int, 
	nome varchar(30),
	primary key(id)
) ENGINE= INNODB;

create table consultas(
	id int not null auto_increment, 
	idProfissional int not null,
	idPaciente int not null,
	idHospital int not null,
    horaInicio datetime not null,
    horaFim datetime not null,
    tipo varchar(30),
	criadoEm datetime not null,
	atualiadoEm datetime not null,
	foreign key(idProfissional) references profissional(id),
	foreign key(idPaciente) references paciente(id),
	foreign key(idHospital) references hospital(id),
    primary key(id)
) ENGINE= INNODB;

create table expediente(
	id int not null auto_increment,
	idProfissional int not null,
	idHospital int not null,
	diaDaSemana varchar(10),
    horaInicio datetime not null,
    horaFim datetime not null,
	foreign key(idProfissional) references profissional(id),
	primary key(id) 
) ENGINE = INNODB;

create table bancoDeVacinas(
	id int not null auto_increment,
	idHospital int not null,
    tipo varchar(30),
	validade datetime not null,
	quantidade int not null,
	atualiadoEm datetime not null,
	foreign key(idHospital) references hospital(id),
	primary key(id) 
) ENGINE = INNODB;

create table bancoDeSangue(
	id int not null auto_increment,
	idHospital int not null,
    tipo varchar(30),
	dataExtracao datetime not null,
	disponivel boolean not null,
	atualiadoEm datetime not null,
	foreign key(idHospital) references hospital(id),
	primary key(id) 
) ENGINE = INNODB;