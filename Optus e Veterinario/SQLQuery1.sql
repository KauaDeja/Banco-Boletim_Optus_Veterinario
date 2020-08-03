/* DDL - Data Definition Language */
-- Criar o banco
CREATE DATABASE boletim;
GO
-- Usar efetivamente o banco
USE boletim;
GO
-- Apagamos uma base de dados
-- DROP DATABASE boletim;

/* 
	Criamos a tabela Aluno 
	IDENTITY - Gera os ids automaticamente, incrementando-os
*/
CREATE TABLE Aluno (
	IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);
GO

/* Criamos a tabela Materia */
CREATE TABLE Materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50)
);
GO


CREATE TABLE Trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- Colocamos as chaves estrangeiras (FK)
	IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria),
	IdAluno	  INT FOREIGN KEY REFERENCES Aluno(IdAluno)
);
GO

-- Apagamos uma tabela caso necessário
-- DROP TABLE Aluno;
-- DROP TABLE Materia;
-- DROP TABLE Trabalho;

-- Alterar a estrutura da tabela Trabalho, incluindo uma coluna nova
ALTER TABLE Trabalho ADD DataEntrega DATETIME;

-- Alteramos e ecluímos uma coluna de teste
-- ALTER TABLE Trabalho ADD Teste INT;
-- ALTER TABLE Trabalho DROP COLUMN Teste;



CREATE DATABASE optus;
GO 
--Usar efetivamente o banco
USE optus;

/* 
	Criamos a tabela Usuário
	IDENTITY - Gera os ids automaticamente, incrementando-os
*/
CREATE TABLE Usuario(
	IdUsuario	INT PRIMARY KEY IDENTITY NOT NULL,
	Nome		VARCHAR(30) NOT NULL,
	Email		VARCHAR(100) NOT NULL,
	Senha		INT NOT NULL,
	Permissao	BINARY NOT NULL,
);
GO

-- Criamos Tabela Estilo
CREATE TABLE Estilo(
	IdEstilo	INT PRIMARY KEY IDENTITY NOT NULL,
	Nome		VARCHAR(30) NOT NULL,
);
GO
--DROP TABLE Estilo;

--Criamos Tabela Artista
CREATE TABLE Artista(
	IdArtista	INT PRIMARY KEY IDENTITY NOT NULL,
	Nome		VARCHAR(30),

	--Adicionamos a FK
	IdEstilo	INT FOREIGN KEY REFERENCES Estilo(IdEstilo),
);
GO

--Criamos TABLE Album
CREATE TABLE Album(
	IdAlbum			INT PRIMARY KEY IDENTITY NOT NULL,
	Nome			VARCHAR(30) NOT NULL,
	DataLancamento	DATETIME NOT NULL,
	Localizacao		VARCHAR(100),
	QtdMinutos		VARCHAR(40),
	Ativo			VARCHAR(20),
	
	--Adicionamos a FK
	IdArtista		INT FOREIGN KEY REFERENCES Artista(IdArtista),

);
GO

--Criamos Table EstiloAlbum
CREATE TABLE EstiloAlbum(
	IdEstiloAlbum	INT PRIMARY KEY IDENTITY NOT NULL,

	--Adicionamos a FK
	IdAlbum			INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo		INT FOREIGN KEY REFERENCES Estilo(IdEstilo)

);
GO

CREATE DATABASE veterinario;
GO
-- Usar efetivamente o banco
USE veterinario;
GO

/* 
	Criamos a tabela Clinica
*/

CREATE TABLE Clinica(
	IdClinica	INT PRIMARY KEY IDENTITY NOT NULL,
	Nome		VARCHAR(30) NOT NULL,
	Endereco	VARCHAR(50) NOT NULL,

);
GO
/* 
	Criamos a tabela MedicoVeterinario
*/
CREATE TABLE MedicoVeterinario(
	IdMedicoVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	CRV					INT,
	Nome				VARCHAR(30) NOT NULL,

	--Adicionamos a FK
	IdClinica			INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);
GO
/* 
	Criamos a tabela Dono
*/

CREATE TABLE Dono(
	IdDono	INT PRIMARY KEY IDENTITY NOT NULL,
	Nome	VARCHAR(30) NOT NULL,
);
GO
/* 
	Criamos a tabela TiposPets
*/

CREATE TABLE TipoPet(
	IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(35),
);
GO

/* 
	Criamos a tabela Raça
*/
CREATE TABLE Raca(
	IdRaca		INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao	VARCHAR(35),

	--Adicionamos a FK
	IdTipoPet			INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet)
);
GO

/* 
	Criamos a tabela PET
*/
CREATE TABLE Pet(
	IdPet			INT PRIMARY KEY IDENTITY NOT NULL,
	Nome			VARCHAR(35) NOT NULL,
	DataNascimento	DATETIME,

	--Adicionamos a FK
	IdRaca			INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono			INT FOREIGN KEY REFERENCES Dono(IdDono)
);
GO

/* 
	Criamos a tabela Atendimento
*/

CREATE TABLE Atendimento(
	IdAtendimento	INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao		VARCHAR(35) NOT NULL,
	DataAtendimento DATETIME,

	--Adicionamos a FK
	IdPet						INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdMedicoVeterinario			INT FOREIGN KEY REFERENCES MedicoVeterinario(IdMedicoVeterinario)
);
GO















