USE optus;
/* DQL - Data Query Language */
SELECT * FROM Artista;

SELECT * FROM Artista WHERE 
	IdArtista = 1 OR --(||)  
	IdArtista = 3;

-- Selecionar como uma BUSCA espec�fica
SELECT * FROM Estilo WHERE 
	Nome LIKE '%o%'; --(&&)

-- Ordena��o por forma crescente (padr�o)
SELECT * FROM Album ORDER BY Nome;

-- Ordena��o por forma crescente
SELECT * FROM Artista ORDER BY Nome ASC;

-- Ordena��o por forma decrescente
SELECT * FROM Album ORDER BY Nome DESC;

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Artista WHERE IdEstilo > 1 AND IdEstilo < 4;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Album WHERE 
	DataLancamento BETWEEN '2020-08-05T10:59:59' AND '2020-08-05T23:59:59';