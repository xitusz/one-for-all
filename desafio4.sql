SELECT U.user_name AS usuario,
IF(MAX(YEAR(R.reproduction_history)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.table_users AS U
INNER JOIN SpotifyClone.table_reproduction_history AS R
ON R.user_id = U.user_id
GROUP BY U.user_name
ORDER BY U.user_name ASC;