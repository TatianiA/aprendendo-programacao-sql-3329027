-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId AS Id,
tra.Name AS Musica,
alb.Title as Album,
art.Name as Artista
FROM
tracks AS tra
INNER JOIN albums as alb ON tra.albumId = alb.albumId
INNER JOIN artists as art ON art.artistId = alb.artistId;


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH Musica as (
SELECT
tra.TrackId AS Id,
tra.Name AS Musica,
alb.Title as Album,
art.Name as Artista
FROM
tracks AS tra
INNER JOIN albums as alb ON tra.albumId = alb.albumId
INNER JOIN artists as art ON art.artistId = alb.artistId)

SELECT
artista,
COUNT (Musica) as quantidade_total_musica
FROM Musica
WHERE artista LIKE 'caetano%';
