SELECT COUNT(h.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic AS h
INNER JOIN SpotifyClone.users AS u
ON h.users_id = u.users_id
WHERE u.users_name = "Barbara Liskov";