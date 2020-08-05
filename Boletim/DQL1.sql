USE boletim;
/* DQL - Data Query Language */
SELECT * FROM Aluno;

SELECT * FROM Aluno WHERE 
	IdAluno = 2 OR --(||)  
	IdAluno = 4;

-- Selecionar como uma BUSCA espec�fica
SELECT * FROM Aluno WHERE 
	Nome LIKE '%a%' AND--(&&) 
	Ra LIKE '%9%';

-- Ordena��o por forma crescente (padr�o)
SELECT * FROM Aluno ORDER BY Nome;

-- Ordena��o por forma crescente
SELECT * FROM Aluno ORDER BY Nome ASC;

-- Ordena��o por forma decrescente
SELECT * FROM Aluno ORDER BY Idade DESC;

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Aluno WHERE IdAluno > 1 AND IdAluno < 4;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Trabalho WHERE 
	DataEntrega BETWEEN '2020-08-05T10:59:59' AND '2020-08-05T23:59:59';
