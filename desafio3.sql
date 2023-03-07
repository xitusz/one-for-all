SELECT
U.user_name AS usuario,
COUNT(R.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(S.song_length / 60), 2) AS total_minutos
FROM SpotifyClone.table_users AS U
INNER JOIN SpotifyClone.table_reproduction_history AS R
ON R.user_id = U.user_id
INNER JOIN SpotifyClone.table_songs AS S
ON S.song_id = R.song_id
GROUP BY U.user_name
ORDER BY U.user_name ASC;