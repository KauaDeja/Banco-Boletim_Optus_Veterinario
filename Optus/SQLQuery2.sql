/* DDL - Data Definition Language */
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