SELECT
	u.users_name AS usuario,
	COUNT(h.song_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(s.song_duration)/60, 2) AS total_minutos
	FROM SpotifyClone.historic AS h
	INNER JOIN SpotifyClone.users AS u
	ON u.users_id = h.users_id
    INNER JOIN SpotifyClone.song AS s
    ON h.song_id = s.song_id
	GROUP BY u.users_name
    ORDER BY u.users_name ASC;