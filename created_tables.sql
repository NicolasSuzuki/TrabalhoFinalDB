CREATE DATABASE AgendaSus;

create table usuarios(
	id int not null auto_increment, 
	login varchar(40) not null, 
	senha varchar(20) not null,  
	rg varchar(18) not null,
	nome varchar(30), 
	sexo char, 
	idade int, 
	telefone varchar(20),
	primary key(id)
) ENGINE= INNODB;

create table profissionais(
	id int not null auto_increment, 
 	idUsuario int, 
    tipo varchar(20),
  	foreign key(idUsuario) references usuarios(id), 
	primary key(id)
) ENGINE= INNODB;

create table pacientes(
	id int not null auto_increment, 
	idUsuario int, 
  	foreign key(idUsuario) references usuarios(id), 
	primary key(id)
) ENGINE= INNODB;

create table medicos(
	id int not null auto_increment,
	idProfissional int not null,
	especialidade varchar(60),
    primary key(id),
	foreign key(idProfissional) references profissionais(id)
) ENGINE = INNODB;

create table enfermeiros(
	id int not null auto_increment,
	idProfissional int not null,
	especialidade varchar(60),
    primary key(id),
	foreign key(idProfissional) references profissionais(id)
) ENGINE = INNODB;

create table hospitais(
	id int not null auto_increment, 
	numeroSalasCirurgicas int, 
	numeroLeitos int,
	numeroLeitosEnfermaria int,
	cep int, 
	numero int, 
	nome varchar(50),
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
	atualizadoEm datetime not null,
	foreign key(idProfissional) references profissionais(id),
	foreign key(idPaciente) references pacientes(id),
	foreign key(idHospital) references hospitais(id),
    primary key(id)
) ENGINE= INNODB;

create table expedientes(
	id int not null auto_increment,
	idProfissional int not null,
	idHospital int not null,
	diaDaSemana varchar(10),
	foreign key(idProfissional) references profissionais(id),
	foreign key(idHospital) references hospitais(id),
	primary key(id) 
) ENGINE = INNODB;

create table banco_de_vacinas(
	id int not null auto_increment,
	idHospital int not null,
    tipo varchar(30),
	validade datetime not null,
	quantidade int not null,
	atualizadoEm datetime not null,
	foreign key(idHospital) references hospitais(id),
	primary key(id) 
) ENGINE = INNODB;

create table banco_de_sangue(
	id int not null auto_increment,
	idHospital int not null,
    tipo varchar(30),
	dataExtracao datetime not null,
	disponivel boolean not null,
	atualizadoEm datetime not null,
	foreign key(idHospital) references hospitais(id),
	primary key(id) 
) ENGINE = INNODB;