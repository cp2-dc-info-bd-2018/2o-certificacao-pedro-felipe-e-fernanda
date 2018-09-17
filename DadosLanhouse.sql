use Locadora;

insert into Funcionarios( CPF, telefone, NumCartTrab, idade, nome) values 
('12512514766', '3325568', '45874656', 20,'Fernanda'),
 ('55569885698', '12547896', '00032211', 15 , 'Pedro'),
 ('54679784579', '85655498', '00021414', 19,'Felipe'),
 ('22256589785', '20365847', '78458965', 12,'Jessica'),
 ('02010356584', '992456874', '36457895', 25,'Gabriel');

 insert into Clientes(id, [login], senha, CPF , nome, telefone) values
 (1, 'nandamgodinho', 'jessica', '14154236548','Fernanda', '325687454'),
 (2, 'badugatinho', '12345678', '24542316454','Noah', '30302525'),
 (3, 'lysgd', 'ahclaro', '41548796523','Felipe', '255478545'),
 (4, 'PHASSELMANN', 'SENHA', '52815851485','Pedro', '65852325'),
 (5, 'alogalera', 'bixona', '14152656547','Janderson', '54624587');

 insert into Ficha(id, TempUso, saldo, datacriacao) values
 (1, 24, 30, '2018/02/03'),
 (2, 5,65, '2018/03/10'),
 (4, 65,85, '2018/04/12'),
 (5, 300,500 , '2018/06/15');

  insert into Computador( idnum, estado) values
 (1,'Bom'),
 (2, 'ruim'),
 (3, 'perfeito estado'),
 (4,'condições críticas'),
 (5, 'quebrado');
 (6,'Bom'),
 (7, 'perfeito estado'),
 (8, 'perfeito estado'),
 (9,'com vírus'),
 (10, 'bom');

  insert into Workstation(id, modelo, nome, ano, idpc) values
 (1, 'Z240 intel ','HP', 2010, 2 ),
 (2, 'M710q Tinny','Lenovo' ,2016, 3 ),
 (3,'M710q Core', 'Dell',2015, 1 ),
 (4,'Z240 7700','Intel' , 2020, 5),
 (5,'Intel Core i3 ','Alfatec ', 2013,4 ); 

   insert into Gamers(id, modelo, nome, ano, idpc) values
 (1, 'Gamer i5','Gamer',2013, 6),
 (2, 'Gmaer Core i5 ','Windows',2015 , 8 ),
 (3, ' Neologic NL|8094','Intel', 2006, 9 ),
 (4, ' Amd A4','GEFORCE', 2018,  7),
 (5, 'Dragon ','ACE',2013 , 10);


 Insert Into FichaFuncionarios(idfuncio, idficha)values
 ('12512514766', 3),
 ('55569885698', 3),
 ('55569885698',4),
 ('54679784579', 1),
 ('22256589785', 5 ),
 ('02010356584', 5 ),
 ('02010356584', 2);

 insert into FichaComputador(idficha, idcomputador) values
 (2, 5),
 (1, 3),
 (5, 7),
 (5, 10),
 (5, 6),
 (5, 8),
 (4, 1),
 (4, 1),
 (4, 9),
 (3, 1);

 
  insert into Locacao(id, dataentrega, prazo, datainicio, idfuncionario, idcliente) values
 (1, '2018/03/05','2018/03/10', '2017/12/15', '54679784579',2 ),
 (2, '2015/05/10','2015/06/10' ,'2014/06/20','12512514766', 1),
 (3,'2016/12/14', '2017/02/14','2015/10/25','55569885698', 3),
 (4,'2018/02/01','2018/03/02' , '2017/11/02','22256589785' , 5),
 (5,'2015/02/03 ','2015/10/30 ', '2014/12/03','02010356584',4 ); 

insert into Genero(nome) values
 ('Corrida' ),
 ('Terror' ),
 ('RPG'),
 ('Aventura'),
 ('Ação'); 

 
insert into Plataforma(nome) values
 ('Windows' ),
 ('PS4' ),
 ('XONE'),
 ('Switch'),

 insert into Jogo(id, nome, ano, desenvolvedora) values
 (1 ,'GodOFwar4',2018 ,'Santa Monica Studio'),
 (2,'LOL',2010,''),
 (3,'Slenderman', 2008,'Parsec'),
 (4,'Forza horizon',2017,'Microsoft'),
 (5,'Unchated',2016,'Naughty Dog');

  insert into GeneroJogo(idgenero, idjogo) values
 ('RPG',2 ),
 ('Aventura',5 ),
 ('Corrida',4 ),
 ('Terror', 3),
 ('Ação', 1 );

  insert into PlataformaJogo(idJogo, idPlat) values
 (2,'Windows' ),
 (3, 'Windows'),
 (3, 'XONE'),
 (1,'PS4' ),
 (4, 'Microsoft'),
 (4, 'XONE'),
 (5,'IOS');

  insert into Exemplar(id, valor, NDeCopias,nome, idjogo) values
 (1, 39.00 , 10 , 'Forza horizon',4 ),
 (2, 60.50, 15 ,'Unchated',5 ),
 (3,29.99 , 20 ,'GodOFwar4',1 ),
 (4,25.99 ,5,'Slenderman', 3),
 (5,49.99 ,40 ,'LOL', 2 );

 insert into ExemplarLocacao(idExempJogo, idlocacao) values
 (2, 2),
 (1, 3),
 (4, 1),
 (3, 5),
 (1, 5),
 (2, 5),
 (5, 4);













