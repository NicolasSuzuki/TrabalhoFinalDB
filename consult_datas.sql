select * from usuarios;
select * from hospitais;
select * from profissionais;
select * from enfermeiros;
select * from expedientes;
select * from medicos;
select * from consultas;
select * from banco_de_sangue;
select * from banco_de_vacinas;
select * from pacientes;


select 
	m.idProfissional, 
    e.idHospital, 
    e.diaDaSemana, 
    m.especialidade from expedientes as e 
    join medicos as m on m.idProfissional = e.idProfissional 
    where e.idProfissional > 20;
#Selecionar os horario das consultas dos medicos em cada hospital

select 
	u.nome as nomeMedico, 
    c.horaFim, 
    c.horaInicio, 
    h.nome as nomeDoHospital
    from consultas as c 
    join medicos as m on m.idProfissional = c.idProfissional 
    join profissionais as p on p.id = m.idProfissional 
    join usuarios as u on u.id = p.idUsuario 
    join hospitais as h on h.id = c.idHospital;
    
#Selecionar os horario das consultas dos pacientes em cada hospital

select 
	u.nome as nomePaciente, 
    c.horaFim, 
    c.horaInicio, 
    h.nome as nomeDoHospital
    from consultas as c 
    join pacientes as p on c.idPaciente = p.id 
    join usuarios as u on u.id = p.idUsuario 
    join hospitais as h on h.id = c.idHospital 
    order by horaInicio;

#Selecionar dias de expediente de cada funcionario, junto com seu cargo e seu nome, do hospital Cleveland Clinic
select 
	e.id as idExpediente,
	u.nome as nomeProfissional, 
    diaDaSemana, 
    h.nome as nomeHospital, 
    p.tipo as cargo from expedientes as e 
    join profissionais as p on e.idProfissional = p.id 
    join usuarios as u on u.id = p.idUsuario join hospitais as h on h.id = e.idHospital
    where h.nome = 'Cleveland Clinic'
    order by nomeProfissional;

#Selecionar enfermeiros que trabalham fim de semana em cada hospital
select 
	u.nome as nomeEnfermeiro, 
    c.diaDaSemana, 
    h.nome as nomeDoHospital from expedientes as c 
    join enfermeiros as e on e.idProfissional = c.idProfissional 
    join profissionais as p on p.id = e.idProfissional 
    join usuarios as u on u.id = p.idUsuario 
    join hospitais as h on h.id = c.idHospital 
	where diaDaSemana in ('Sabado', 'Domingo')
    order by idHospital;
#Selecionar tipos sanguinios disponiveis em cada hospital, ordenados por tipo sanguinio
select 
	h.nome as nomeDoHospital,
    bs.tipo as tipoSanguinio from banco_de_sangue as bs join hospitais as h on h.id=bs.idHospital where bs.disponivel = 1 order by bs.tipo;

#Selecionar todos os medicos com suas especialidades e enfermeiros que tenham a mesma especialidade
select
	(select u.nome from usuarios as u join profissionais as p on p.idUsuario = u.id join medicos where medicos.idProfissional = p.id and medicos.id = med.id) as nomeMedico,
    (select u.nome from usuarios as u join profissionais as p on p.idUsuario = u.id join enfermeiros where enfermeiros.idProfissional = p.id and enfermeiros.id = en.id) as nomeEnfermeiro,
    med.especialidade as medEspecialidade,
    en.especialidade as enfEspecialidade
    from medicos as med
    left join enfermeiros as en on en.especialidade = med.especialidade
    order by medEspecialidade; 

#Selecionar todos os pacientes com o tipo de consulta e enfermeiros que podem acompanhar/guiar a consulta
select
	(select u.nome from usuarios as u join pacientes as p on p.idUsuario = u.id and consul.idPaciente = p.id) as nomePaciente,
    (select u.nome from usuarios as u join profissionais as p on p.idUsuario = u.id join enfermeiros where enfermeiros.idProfissional = p.id and enfermeiros.id = en.id) as nomeEnfermeiro,
    consul.tipo as tipoDaConsulta,
    en.especialidade as enfEspecialidade
    from consultas as consul
    left join enfermeiros as en on en.especialidade = consul.tipo
    order by tipoDaConsulta; 
    
#Selecionar a soma de vacinas em cada hospital ordenado por tipos
select 
	sum(quantidade), tipo from banco_de_vacinas group by tipo;

#Selecionar bolsas de sangue disponiveis em cada hospital ordenado por tipos
select 
	count(disponivel), tipo, hospitais.nome as nomeHospital from banco_de_sangue join hospitais on banco_de_sangue.idHospital = hospitais.id group by idHospital order by tipo;

#Selecionar media de bolsas de sangue disponiveis em cada hospital ordenado por tipos
select 
	avg(disponivel), tipo, hospitais.nome as nomeHospital from banco_de_sangue join hospitais on banco_de_sangue.idHospital = hospitais.id group by idHospital order by tipo;

#Selecionar a media de quantidade de vacinas em cada hospital ordenado por tipos
select 
	avg(quantidade), tipo from banco_de_vacinas group by tipo;

#Selecionar a soma de medicos por especialidade ordenado por nome
select 
	count(m.especialidade), m.especialidade from medicos as m join profissionais as p on m.idProfissional = p.id group by especialidade;
    
#Selecionar nome, tipo e especialidade medicas ou dos enfermeiros dos profissionais
select u.nome, p.tipo, medicos.especialidade as especialidadeMedica, enfermeiros.especialidade as especialidadeEnfermeiro from usuarios as u join profissionais as p on p.idUsuario = u.id left join enfermeiros on enfermeiros.idProfissional = p.id left join medicos on medicos.idProfissional = p.id;

#Selecionar nome, id e tipo profissional dos paciente e profissionais
select u.nome, pa.id as idDoPaciente, pr.id as idDoProfissional, pr.tipo as tipoProfissional from usuarios as u left join pacientes as pa on pa.idUsuario = u.id left join profissionais as pr on pr.idUsuario = u.id;