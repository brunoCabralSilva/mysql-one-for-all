SELECT  
COUNT(*) AS cancoes,
COUNT(DISTINCT a.artist_id) AS artistas,
COUNT(DISTINCT a.album_id) AS albuns
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.song AS s
ON a.album_id = s.album_id;