/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
INSERT INTO Clinica(Nome, Endereco) VALUES('Petz', 'Rua Mafalda 163')
INSERT INTO Dono(Nome) VALUES('Deja');
INSERT INTO MedicoVeterinario(Nome, CRV, IdClinica) VALUES('Ricardo', 12562, 1);
INSERT INTO TipoPet(Descricao) VALUES('Cachorro');
INSERT INTO Raca(Descricao, IdTipoPet) VALUES('Pitbull', 1);
INSERT INTO Pet(Nome, DataNascimento,IdRaca,IdDono) VALUES('Snoopy', '2018-08-05T15:59:59', 3, 1)
INSERT INTO Atendimento(Descricao, DataAtendimento, IdPet, IdMedicoVeterinario)	VALUES
	('Atendido', '2020-08-04',5, 1)

/* DQL - SELECT */
SELECT * FROM Clinica;
SELECT * FROM Dono;
SELECT * FROM MedicoVeterinario;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Pet;
SELECT * FROM Atendimento;