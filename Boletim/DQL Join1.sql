/* DQL - JOINS*/
USE boletim;

SELECT 
	Aluno.Nome,
	Materia.Titulo,
	Trabalho.Nota
FROM Trabalho
	--RIGHT JOIN Aluno ON Trabalho.IdAluno = Aluno.IdAluno
	--LEFT JOIN Aluno ON Trabalho.IdAluno = Aluno.IdAluno
	INNER JOIN Aluno ON Trabalho.IdAluno = Aluno.IdAluno
	INNER JOIN Materia ON Trabalho.IdMateria = Materia.IdMateria
--WHERE Trabalho.Nota IS NULL;



SELECT * FROM Materia;
SELECT * FROM Aluno;