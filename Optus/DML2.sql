/* DML - Data Manipultaion Language*/
-- INSERT - Inserir
	
	INSERT INTO Usuario(Nome, Email, Senha, Permissao) VALUES ('Kaua', 'riven@gmail.com', 12345678, 1);
	INSERT INTO Estilo(Nome) VALUES('Bruno Mars');
	INSERT INTO Artista(Nome, IdEstilo) VALUES('Anthony Kiedis', 1);
	INSERT INTO Album(Nome, DataLancamento, Localizacao, QtdMinutos, Ativo, IdArtista) VALUES('The Getaway', '2020-08-05T23:59:59','Rua Tecla', 6, 'Ativo', 1);
	INSERT INTO EstiloAlbum(IdEstilo, IdAlbum) VALUES(1, 3)

	-- UPDATE - Alterar
	UPDATE Estilo SET 
		Nome = 'Rock'
		WHERE IdEstilo = 1;

	--DELETE - Excluir
	--DELETE FROM Estilo WHERE IdEstilo = 2;
	--DELETE FROM Usuario WHERE IdUsuario = 2;

	/* DQL - SELECT */
	
	SELECT * FROM Usuario;
	SELECT * FROM Estilo;
	SELECT * FROM Artista;
	SELECT * FROM Album;
	SELECT * FROM EstiloAlbum;