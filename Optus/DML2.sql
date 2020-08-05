/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
	
	INSERT INTO Usuario(Nome, Email, Senha, Permissao) VALUES ('Kaua', 'riven@gmail.com', 12345678, 1);
	INSERT INTO Estilo(Nome) VALUES('MPB');
	INSERT INTO Artista(Nome, IdEstilo) VALUES('Renato Russo', 1);
	INSERT INTO Album(Nome, DataLancamento, Localizacao, QtdMinutos, Ativo, IdArtista) VALUES('Globalização', '2020-08-05T10:59:59','Rua Planeta', 6, 'Ativo', 4);
	INSERT INTO EstiloAlbum(IdEstilo, IdAlbum) VALUES(1, 3)

	-- UPDATE - Alterar
	UPDATE Estilo SET 
		Nome = 'Pop'
		WHERE IdEstilo = 3;

	--DELETE - Excluir
	--DELETE FROM Estilo WHERE IdEstilo = 2;
	--DELETE FROM Usuario WHERE IdUsuario = 2;

	/* DQL - SELECT */
	
	SELECT * FROM Usuario;
	SELECT * FROM Estilo;
	SELECT * FROM Artista;
	SELECT * FROM Album;
	SELECT * FROM EstiloAlbum;

	ALTER TABLE Usuario ALTER COLUMN Permissao VARCHAR(40);