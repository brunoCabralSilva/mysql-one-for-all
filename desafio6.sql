SELECT 
	ROUND(MIN(p.plan_value), 2) AS faturamento_minimo,
    ROUND(MAX(p.plan_value), 2) AS faturamento_maximo,
    ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
    SUM(p.plan_value) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.users AS u;