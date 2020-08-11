/* DDL - Data Definition Language */
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

-- Criamos a Tabela Atendimento

CREATE TABLE Atendimento (
	IdAtendimento			INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao				VARCHAR(30),
	DataAtendimento			VARCHAR(50),

	IdPet					INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdMedicoVeterinario		INT FOREIGN KEY REFERENCES MedicoVeterinario(IdMedicoVeterinario)
);
GO