INSERT INTO hospitais (`nome`,`cep`,`numero`,`numeroSalasCirurgicas`,`numeroLeitosEnfermaria`,`numeroLeitos`)
VALUES
  ("Cleveland Clinic","141867",145,10,5,1),
  ("Singapore General Hospital","2874",130,6,3,3),
  ("Johns Hopkins Hospital","418582",153,6,9,7),
  ("Massachussetts General Hospital","92551",158,7,7,5),
  ("New York General Hospital","26731",169,2,4,4),
  ("Johns Hopkins Hospital","557891",112,7,3,1),
  ("Atltanta General Hospital","667328",188,5,9,2),
  ("Cedars-Sinai Medical Center","24087",107,8,9,4),
  ("Houston Methodist Hospital","2842",139,3,3,4),
  ("Barnes-Jewish Hospital","66868",181,8,4,3);
  
INSERT INTO banco_de_sangue(idHospital, tipo, dataExtracao, disponivel, atualizadoEm) VALUES
(1,'A+',"2022-05-22 13:18:50",1,"2022-11-20 11:20:22"),
(2,'B+',"2022-10-29 10:15:02",0,"2023-01-23 01:25:17"),
(3,'O+',"2022-12-19 08:12:11",1,"2022-08-10 23:29:39"),
(4,'A-',"2021-08-03 05:21:02",1,"2021-06-10 07:19:34"),
(4,'O+',"2022-05-27 13:44:22",1,"2022-11-20 11:20:22"),
(5,'A+',"2023-01-24 17:13:58",1,"2021-06-10 07:19:34"),
(5,'B-',"2022-05-01 02:29:48",0,"2022-02-06 05:48:48"),
(6,'O-',"2022-10-22 15:58:10",1,"2021-10-07 23:38:42"),
(7,'O+',"2021-02-07 00:16:50",1,"2022-11-20 11:20:22"),
(8,'O-',"2022-05-27 13:44:22",1,"2022-11-20 11:20:22"),
(8,'O+',"2022-05-27 13:44:22",1,"2022-11-20 11:20:22"),
(9,'A+',"2023-01-25 17:13:58",0,"2021-06-10 07:19:34"),
(9,'A+',"2023-01-24 17:13:58",1,"2021-06-10 07:19:34"),
(10,'B-',"2023-01-23 01:25:17",1,"2022-05-22 13:18:50");

INSERT INTO banco_de_vacinas(idHospital, tipo, validade, quantidade, atualizadoEm)
VALUES
(1,'BCG',"2023-01-23 01:25:17",5,"2022-03-14 03:29:31"),
(2,'Hepatite B',"2022-08-10 23:29:39",8,"2022-10-05 06:03:07"),
(3,'Poliomielite 1,2,3 (VIP-inativa)',"2022-11-20 11:20:22",20,"2022-02-22 11:01:37"),
(4,'Poliomielite 1 e 3 (VOP-atenuada)',"2021-06-10 07:19:34",42,"2021-04-21 14:27:02"),
(5,'Rotavírus humano G1P1 (VRH)',"2022-02-06 05:48:48",12,"2022-05-09 07:39:50"),
(6,'DTP+Hib+HB (Penta)',"2021-10-07 23:38:42",23,"2023-01-23 13:23:13"),
(7,'Pneumocócica 10 valente (Pneumo 10)',"2022-11-20 11:20:22",31,"2022-09-14 03:14:48"),
(8,'Meningocócica C (conjugada)',"2021-06-10 07:19:34",15,"2022-03-24 12:06:05"),
(9,'Febre Amarela (atenuada)',"2022-05-22 13:18:50",18,"2021-05-10 03:14:18"),
(10,'Típlice viral(SCR-Sarampo, Caxumba, Rubéola)',"2022-08-10 23:29:39",7,"2022-10-05 06:03:07");

INSERT INTO usuarios (`rg`,`nome`,`sexo`,`idade`,`telefone`,`login`,`senha`)
VALUES
  ("33.891.258-90","Mechelle Owens","M",51,"(96)08649-1221","mechelleowens6864@sus.com","TXYR3157"),
  ("01.771.777-20","Meghan Beck","F",46,"(63)99650-7220","meghanbeck8568@sus.com","KJYQ9541"),
  ("88.981.528-17","Caesar Kemp","F",69,"(25)45381-9634","caesarkemp@sus.com","SMKD5845"),
  ("68.205.082-88","Kay Craig","M",62,"(01)38256-5488","kaycraig@sus.com","AMTH1924"),
  ("33.413.669-34","Nerea Crane","M",68,"(55)90456-7352","nereacrane3191@sus.com","MBEC5263"),
  ("21.282.115-66","Sarah Potts","M",61,"(38)36925-7681","sarahpotts2602@sus.com","MXHE6235"),
  ("18.075.212-36","Steven Osborne","M",26,"(14)45371-7024","stevenosborne5940@sus.com","SOGK2717"),
  ("44.942.103-53","Minerva Walsh","F",60,"(75)32171-1395","minervawalsh@sus.com","EJNA8843"),
  ("16.155.387-66","Davis Hodges","F",69,"(78)78013-1739","davishodges2060@sus.com","YHFK7465"),
  ("46.966.096-35","Illiana Ortega","M",39,"(66)28288-4746","illianaortega5932@sus.com","XRLI9568"),
  ("41.585.826-19","Lewis Marsh","M",37,"(07)55885-5046","lewismarsh@sus.com","MTNK1245"),
  ("66.570.109-20","Hanna Kirby","M",48,"(77)97466-5403","hannakirby1332@sus.com","GPRU4541"),
  ("63.476.253-86","Anthony Workman","F",51,"(34)16373-1215","anthonyworkman4737@sus.com","OWVO4673"),
  ("70.568.966-31","Luke Rodriquez","F",56,"(36)90879-1281","lukerodriquez7768@sus.com","GRBE5684"),
  ("27.847.666-64","Camille Everett","F",52,"(85)58410-2571","camilleeverett6457@sus.com","OIOB2085"),
  ("13.605.812-48","Mary Booker","F",45,"(22)94668-8362","marybooker8433@sus.com","ZTLN5042"),
  ("81.146.419-44","Sierra Myers","F",65,"(73)53583-1555","sierramyers@sus.com","LHMB6333"),
  ("58.977.441-76","Savannah Burris","M",24,"(91)56667-2672","savannahburris@sus.com","MHNI2601"),
  ("52.653.014-18","Florence Bradley","M",64,"(68)26485-8573","florencebradley3037@sus.com","CCBI7254"),
  ("78.811.354-38","Yvette Collins","F",23,"(05)20713-2365","yvettecollins@sus.com","PTUK3741"),
  ("37.122.728-72","Audrey Maddox","F",26,"(98)43677-3181","audreymaddox@sus.com","MSBJ7888"),
  ("64.752.436-68","Wang Hall","M",35,"(69)41888-8156","wanghall@sus.com","PBRH0163"),
  ("88.536.868-98","Jesse Hayes","F",67,"(11)22370-3939","jessehayes3678@sus.com","JZHE7022"),
  ("75.969.831-71","Jameson Walker","F",54,"(66)24764-5875","jamesonwalker@sus.com","XEAW2279"),
  ("84.022.565-36","Megan Talley","M",64,"(12)37351-1481","megantalley3139@sus.com","EEFJ1807"),
  ("22.318.547-84","Shoshana Todd","M",56,"(06)57375-5398","shoshanatodd9121@sus.com","CNKV5644"),
  ("51.216.677-62","Oscar Boyd","F",61,"(95)14249-7296","oscarboyd4175@sus.com","VTFS8141"),
  ("65.323.339-49","Ciaran Weeks","M",27,"(58)77848-6070","ciaranweeks8704@sus.com","PJQK3536"),
  ("64.373.417-56","Irene Keith","F",45,"(01)16542-3461","irenekeith@sus.com","TMPT4973"),
  ("31.138.210-14","Whitney Villarreal","M",65,"(16)82671-5014","whitneyvillarreal@sus.com","VVQB6591"),
  ("81.488.156-76","Jakeem Keller","M",26,"(86)63126-4875","jakeemkeller3046@sus.com","TTRQ5941"),
  ("59.214.086-40","Len Goodwin","F",64,"(45)22528-6284","lengoodwin@sus.com","EHTB6657"),
  ("89.584.186-94","Madaline Jennings","M",34,"(62)25629-5251","madalinejennings6921@sus.com","LSOW3455"),
  ("00.075.786-39","Catherine Boyer","F",33,"(75)61567-2540","catherineboyer@sus.com","RLPJ7311"),
  ("88.600.035-41","Oliver Jarvis","F",50,"(42)72935-8430","oliverjarvis4140@sus.com","KYVU8607"),
  ("04.300.252-95","Ria Richmond","F",44,"(50)16014-8851","riarichmond1547@sus.com","TUGV5853"),
  ("11.978.172-10","Zane Gibbs","M",59,"(01)32645-1105","zanegibbs1930@sus.com","XSRJ7890"),
  ("10.131.403-48","Imelda Glass","F",25,"(42)83544-6740","imeldaglass6847@sus.com","CPSW2472"),
  ("72.731.231-12","Griffin Pearson","M",21,"(63)24624-5527","griffinpearson2516@sus.com","USUW4437"),
  ("72.404.176-82","Kai House","F",38,"(43)25453-4665","kaihouse@sus.com","WKIQ6242");

INSERT INTO pacientes(idUsuario) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO profissionais (`idUsuario`,`tipo`)
VALUES
  (11,"enfermeiro"),
  (12,"enfermeiro"),
  (13,"enfermeiro"), 
  (14,"enfermeiro "),
  (15,"enfermeiro"),
  (16,"enfermeiro"),
  (17,"enfermeiro"),
  (18,"enfermeiro"),
  (19,"enfermeiro"),
  (20,"enfermeiro"),
  (21,"secretario"),
  (22,"secretario"),
  (23,"secretario"),
  (24,"secretario"),
  (25,"secretario"),
  (26,"secretario"),
  (27,"secretario"),
  (28,"secretario"),
  (29,"secretario"),
  (30,"secretario"),
  (31,"medico"),
  (32,"medico"),
  (33,"medico"),
  (34,"medico"),
  (35,"medico"),
  (36,"medico"),
  (37,"medico"),
  (38,"medico"),
  (39,"medico"),
  (40,"medico");
  
INSERT INTO enfermeiros (`idProfissional`,`Especialidade`)
VALUES
  (1,"obstetrica"),
  (2,"cardiologia"),
  (3,"obstetrica"),
  (4,"geral"),
  (5,"geral"),
  (6,"pediatria"),
  (7,"obstetrica"),
  (8,"geral"),
  (9,"resgate"),
  (10,"cardiologia");

INSERT INTO medicos (`idProfissional`,`Especialidade`)
VALUES
  (21,"pediatria"),
  (22,"otorrinolaringologia"),
  (23,"oftalmologia"),
  (24,"pediatria"),
  (25,"oftalmologia"),
  (26,"cardiologia"),
  (27,"otorrinolaringologia"),
  (28,"ortopedia"),
  (29,"cardiologia"),
  (30,"pediatria");
  
INSERT INTO expedientes (idProfissional, idHospital, diaDaSemana)
VALUES
(1,9,'Segunda'),
(1,1,'Quarta'),
(1,1,'Sexta'),
(2,2,'Terça'),
(2,10,'Quinta'),
(2,2,'Sabado'),
(3,1,'Quarta'),
(3,3,'Quinta'),
(3,3,'Sexta'),
(4,4,'Segunda'),
(4,6,'Sexta'),
(4,4,'Quinta'),
(5,5,'Segunda'),
(5,5,'Quinta'),
(5,7,'Sexta'),
(6,6,'Quinta'),
(6,6,'Sexta'),
(6,8,'Sabado'),
(7,7,'Domingo'),
(7,7,'Segunda'),
(7,9,'Quarta'),
(8,8,'Segunda'),
(8,8,'Terça'),
(8,2,'Domingo'),
(9,9,'Terça'),
(9,9,'Quinta'),
(9,5,'Sexta'),
(10,10,'Quarta'),
(10,10,'Sexta'),
(10,4,'Domingo'),
(11,1,'Segunda'),
(11,1,'Terça'),
(11,3,'Sabado'),
(12,2,'Terça'),
(12,2,'Quarta'),
(12,7,'Sexta'),
(13,3,'Quarta'),
(13,9,'Quinta'),
(13,3,'Domingo'),
(14,4,'Quinta'),
(14,10,'Sexta'),
(14,4,'Sabado'),
(15,5,'Sexta'),
(15,4,'Sabado'),
(15,3,'Quinta'),
(16,6,'Sabado'),
(16,5,'Segunda'),
(16,4,'Terça'),
(17,7,'Domingo'),
(17,6,'Terça'),
(17,5,'Quinta'),
(18,8,'Segunda'),
(18,7,'Domingo'),
(18,8,'Sexta'),
(19,9,'Terça'),
(19,8,'Quarta'),
(19,7,'Quinta'),
(19,7,'Sexta'),
(19,7,'Sabado'),
(20,10,'Quarta'),
(20,9,'Quinta'),
(20,9,'Sexta'),
(21,1,'Segunda'),
(21,10,'Terça'),
(21,9,'Quarta'),
(21,7,'Quinta'),
(22,2,'Terça'),
(22,2,'Domingo'),
(22,2,'Sexta'),
(22,1,'Segunda'),
(23,3,'Quarta'),
(23,2,'Quinta'),
(23,3,'Sexta'),
(24,4,'Quinta'),
(24,3,'Segunda'),
(24,3,'Quarta'),
(25,5,'Sexta'),
(25,4,'Sabado'),
(25,4,'Domingo'),
(26,6,'Sabado'),
(26,5,'Domingo'),
(26,5,'Segunda'),
(26,5,'Terça'),
(27,7,'Domingo'),
(27,7,'Segunda'),
(27,6,'Terça'),
(28,8,'Segunda'),
(28,8,'Quarta'),
(28,8,'Quinta'),
(29,9,'Terça'),
(29,9,'Quarta'),
(29,7,'Quinta'),
(30,5,'Segunda'),
(30,10,'Quarta'),
(30,2,'Sexta'),
(30,3,'Domingo'),
(30,1,'Terça');

INSERT INTO consultas (`idProfissional`,`idHospital`,`idPaciente`,`tipo`,`horaInicio`,`horaFim`,`criadoEm`,`atualizadoEm`)
VALUES
  (30,5,4,"pediatria","2022-01-25 07:00","2022-01-25 08:00","2022-01-20 05:44:16","2022-01-25 07:00"),
  (23,3,3,"oftalmologia","2022-01-28 01:00","2022-01-28 02:00","2022-01-24 16:42:51","2022-01-28 01:12:11"),
  (29,9,6,"cardiologia","2022-01-26 10:00","2022-01-26 11:00","2022-01-22 09:30:27","2022-01-26 23:28:50"),
  (30,1,1,"pediatria","2022-01-18 00:00","2022-01-18 01:00","2022-01-10 11:35:34","2022-01-18 04:26:52"),
  (27,6,6,"otorrinolaringologia","2022-01-11 16:00","2022-01-11 17:00","2022-01-08 03:54:21","2022-01-11 15:11:28"),
  (26,5,3,"cardiologia","2022-01-05 05:00","2022-01-05 06:00","2022-01-04 15:59:05","2022-01-05 05:13:28"),
  (22,2,3,"otorrinolaringologia","2022-01-02 16:00","2022-01-02 17:00","2022-01-02 10:52:05","2022-01-02 15:54:54"),
  (21,10,4,"pediatria","2022-01-04 04:00","2022-01-04 05:00","2022-01-02 20:16:53","2022-01-02 03:06:45"),
  (25,4,4,"oftalmologia","2022-01-01 19:00","2022-01-01 20:00","2021-12-28 18:29:19","2022-01-01 01:10:08"),
  (27,7,7,"otorrinolaringologia","2022-01-09 07:00","2022-01-09 08:00","2022-01-02 08:17:47","2022-01-09 22:42:15");