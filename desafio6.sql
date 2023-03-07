SELECT
MIN(P.plan_price) AS faturamento_minimo,
MAX(P.plan_price) AS faturamento_maximo,
ROUND(AVG(P.plan_price), 2) AS faturamento_medio,
ROUND(SUM(P.plan_price), 2) AS faturamento_total
FROM SpotifyClone.table_users AS U
INNER JOIN SpotifyClone.table_plans AS P
ON P.plan_id = U.plan_id;