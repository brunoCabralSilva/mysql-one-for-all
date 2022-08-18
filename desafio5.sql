SELECT s.song_name AS cancao,
 COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.historic AS h
ON s.song_id = h.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, s.song_name ASC
LIMIT 2;