-- Crie uma consulta que retorne apenas as colunas "Name", "Composer" e "AlbumId" da tabela "tracks"
SELECT
Name,composer, AlbumID
FROM
tracks
WHERE AlbumId =5;

SELECT
Name,composer, AlbumID
FROM
tracks
WHERE AlbumId =1;

-- Repita a consulta anterior e dessa vez filtre os registros para que retornem apenas as tracks com o atributo "AlbumId" igual a 1
SELECT
Name,composer, GenreId
FROM
tracks;