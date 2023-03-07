SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.table_reproduction_history AS R
INNER JOIN SpotifyClone.table_users AS U
ON R.user_id = U.user_id
WHERE U.user_name = 'Bill';