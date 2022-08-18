SELECT art.artist_name AS artista, 
alb.album_name AS album,
COUNT(fol.artist_id) AS seguidores
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.follow as fol
ON art.artist_id = fol.artist_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;