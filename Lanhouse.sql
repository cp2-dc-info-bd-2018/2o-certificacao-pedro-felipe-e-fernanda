use Locadora;

Create Table Funcionarios(
CPF varchar(11),
telefone varchar(10),
NumCartTrab varchar(8),
Nome varchar(50),
idade int,
primary key (CPF),
);
Create Table Clientes(
id int,
[login] varchar(20),
senha varchar(25),
CPF varchar(11),
nome varchar(50),
telefone varchar(10)
primary key (id)
);
Create Table Ficha(
id int not null,
TempUso int,
saldo Float,
datacriação date
primary key (id)
Foreign Key (id) references Clientes(id)
);
Create Table Computador(
idnum int,
estado varchar(20)
Primary Key (idnum)
);
Create Table Workstation(
id int not null,
modelo varchar(20),
nome varchar(50),
ano int,
idpc int
Primary Key (id)
Foreign Key (idpc) references Computador(idnum)
);
Create Table Gamers(
id int not null,
modelo varchar(20),
nome varchar(50),
ano int,
idpc int
Primary key (id)
Foreign Key (idpc) references Computador(idnum)
);
Create Table FichaFuncionarios(
idfuncio varchar(11) not null,
idficha int not null,
Primary Key(idfuncio,idficha),
Foreign Key (idfuncio) references funcionarios(CPF),
Foreign Key (idficha) references Ficha(id),
);
Create Table FichaComputador(
idficha int not null,
idcomputador int not null
Primary Key(idficha,idcomputador)
Foreign Key (idficha) references Ficha(id),
Foreign Key (idcomputador) references Computador(idnum),
);
Create Table Locacao(
id int not null,
dataentrega date,
prazo date,
dataincio date,
idfuncionario varchar(11) not null,
idcliente int not null
Primary Key(id)
Foreign Key (idfuncionario) references funcionarios(CPF),
Foreign Key (idcliente) references Clientes(id)
);
Create Table Genero(
Nome Varchar(20) not null
Primary Key (Nome)
);
Create Table Plataforma(
Nome Varchar(20) not null
Primary Key (Nome)
);
Create Table Jogo(
id int not null,
Nome Varchar(20),
ano int,
desenvolvedora varchar(20)
Primary Key (id)
);
Create Table GeneroJogo(
idJogo int not null,
idGenero varchar(20) not null
Primary Key(idJogo,idGenero)
Foreign Key (idJogo) references Jogo(id),
Foreign Key (idGenero) references Genero(Nome)
);
Create Table PlataformaJogo(
idJogo int not null,
idPlat varchar(20) not null
Primary Key(idJogo,idPlat)
Foreign Key (idJogo) references Jogo(id),
Foreign Key (idPlat) references Plataforma(Nome)
);
Create Table Exemplar(
id int,
valor float,
NDeCopias int,
Nome Varchar(20),
idjogo int not null,
Primary Key (id),
Foreign Key (idjogo) references Jogo(id)
);
Create Table ExemplarLocacao(
idExempJogo int not null,
idlocacao int not null
Primary Key(idExempJogo,idlocacao)
Foreign Key (idExempJogo) references Exemplar(id),
Foreign Key (idlocacao) references Locacao(id)
);
