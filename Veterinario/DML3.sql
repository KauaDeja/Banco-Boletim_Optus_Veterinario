/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
INSERT INTO Clinica(Nome, Endereco) VALUES('Petz', 'Rua Mafalda 163')
INSERT INTO Dono(Nome) VALUES('Deja');
INSERT INTO MedicoVeterinario(Nome, CRV, IdClinica) VALUES('Ricardo', 12562, 1);
INSERT INTO TipoPet(Descricao) VALUES('Ave');
INSERT INTO Raca(Descricao, IdTipoPet) VALUES('Calopsita', 2);
INSERT INTO Pet(Nome, DataNascimento,IdRaca,IdDono) VALUES('Luffy', '2018-08-05T15:59:59', 2, 3)


/* DQL - SELECT */
SELECT * FROM Clinica;
SELECT * FROM Dono;
SELECT * FROM MedicoVeterinario;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Pet;

