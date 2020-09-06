USE Pets;
/* DQL - Data Query Language */
SELECT * FROM Dono;

SELECT * FROM Dono WHERE 
	IdDono = 1 OR --(||)  
	IdDono = 3;

-- Selecionar como uma BUSCA específica
SELECT * FROM Pet WHERE 
	Nome LIKE '%u%'; --(&&)

-- Ordenação por forma crescente (padrão)
SELECT * FROM Pet ORDER BY Nome;

-- Ordenação por forma crescente
SELECT * FROM Pet ORDER BY Nome ASC;

-- Ordenação por forma decrescente
SELECT * FROM Pet ORDER BY Nome DESC;

-- Selecionar dados com algumas condições especiais
SELECT * FROM TipoPet WHERE IdTipoPet > 0 AND IdTipoPet < 3;

-- Selecionar dados ENTRE valores específicos
SELECT * FROM Pet WHERE 
	DataNascimento BETWEEN '2018-08-05T15:59:59' AND '2018-08-05T23:59:59';