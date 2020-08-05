USE optus;
/* DQL - Data Query Language */
SELECT * FROM Artista;

SELECT * FROM Artista WHERE 
	IdArtista = 1 OR --(||)  
	IdArtista = 3;

-- Selecionar como uma BUSCA específica
SELECT * FROM Estilo WHERE 
	Nome LIKE '%o%'; --(&&)

-- Ordenação por forma crescente (padrão)
SELECT * FROM Album ORDER BY Nome;

-- Ordenação por forma crescente
SELECT * FROM Artista ORDER BY Nome ASC;

-- Ordenação por forma decrescente
SELECT * FROM Album ORDER BY Nome DESC;

-- Selecionar dados com algumas condições especiais
SELECT * FROM Artista WHERE IdEstilo > 1 AND IdEstilo < 4;

-- Selecionar dados ENTRE valores específicos
SELECT * FROM Album WHERE 
	DataLancamento BETWEEN '2020-08-05T10:59:59' AND '2020-08-05T23:59:59';