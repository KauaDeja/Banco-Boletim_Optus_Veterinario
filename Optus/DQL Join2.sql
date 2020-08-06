/* DQL - JOINS*/
USE optus;

SELECT 
	Artista.Nome,
	Album.Nome
FROM Album
	--RIGHT JOIN Album ON Album.IdArtista = Artista.IdArtista
	--INNER JOIN Artista ON Album.IdArtista = Artista.IdArtista
	FULL OUTER JOIN Artista ON Album.IdArtista = Artista.IdArtista
--WHERE Album.Localizacao IS NULL;



SELECT * FROM Album;
SELECT * FROM Artista;