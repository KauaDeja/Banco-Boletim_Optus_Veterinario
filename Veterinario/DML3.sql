/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
INSERT INTO Clinica(Nome, Endereco) VALUES('Petz', 'Rua Mafalda 163')
INSERT INTO Dono(Nome) VALUES('Yan');
INSERT INTO MedicoVeterinario(Nome, CRV, IdClinica) VALUES('Ricardo', 12562, 1);
INSERT INTO TipoPet(Descricao) VALUES('Cachorro');
INSERT INTO Raca(Descricao, IdTipoPet) VALUES('PitBull', 1);
INSERT INTO Pet(Nome, DataNascimento,IdRaca,IdDono) VALUES('Snoop', '2018-08-05T20:59:59', 1, 1)


/* DQL - SELECT */
SELECT * FROM Clinica;
SELECT * FROM Dono;
SELECT * FROM MedicoVeterinario;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Pet;

