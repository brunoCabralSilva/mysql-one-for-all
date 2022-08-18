SELECT u.users_name AS usuario,
IF(YEAR(MAX(h.historic_date)) >= 2021, "Usuário ativo", "Usuário inativo") AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h
ON u.users_id = h.users_id
GROUP BY u.users_name
ORDER BY u.users_name ASC;