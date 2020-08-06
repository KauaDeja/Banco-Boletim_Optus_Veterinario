/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
	INSERT INTO Aluno(Nome, Ra, Idade) VALUES('Dani','R123452', 18);
	INSERT INTO Materia(Titulo) VALUES('Matemática');
	INSERT INTO Materia(Titulo) VALUES('Português');
	INSERT INTO Trabalho(Nota, DataEntrega, IdAluno, IdMateria) VALUES(NULL, '2020-08-05T10:59:59', 7, 2)


-- UPDATE - Alterar
	UPDATE Trabalho SET 
		Nota = 9.3
		WHERE IdAluno = 1;



--	DELETE - Excluir
	--DELETE FROM Trabalho;
	--DELETE FROM Aluno;
	--DELETE FROM Materia;

	DELETE FROM Aluno WHERE IdAluno = 3;

/* DQL - SELECT */
	SELECT * FROM Aluno;
	SELECT * FROM Materia;
	SELECT * FROM Trabalho;

	ALTER TABLE Trabalho ALTER COLUMN Nota DECIMAL(10, 2)