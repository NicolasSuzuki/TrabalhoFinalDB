select * from usuarios;
select * from hospitais;
select * from profissionais;
select * from enfermeiros;
select * from medicos;
select * from medicos as m join profissionais as p where m.idProfissional = p.id;
select m.idProfissional, e.idHospital, e.diaDaSemana, m.especialidade from expedientes as e join medicos as m where m.idProfissional = e.idProfissional and e.idProfissional > 20;
select * from consultas;