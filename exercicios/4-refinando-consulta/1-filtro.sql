-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT
tra.TrackId AS id,
tra.Name AS musica,
alb.Title AS titulo_artista,
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums as alb on tra.AlbumId = alb.AlbumId
INNER JOIN artists as art on art.ArtistId = alb.ArtistId
WHERE
artista like '%nação%'
AND titulo_artista NOT LIKE 'Da Lama ao Caos';