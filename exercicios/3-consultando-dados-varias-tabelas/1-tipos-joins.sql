-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT *
FROM albums
LEFT JOIN artists ON albums.ArtistId = artists.ArtistId;

-- "Selecione todas as colunas da tabela albums e junte com a tabela artist, relacionando os registros onde o ArtistId do álbum é igual ao ArtistId do artista. Traga todos os álbuns, mesmo que não exista um artista correspondente."