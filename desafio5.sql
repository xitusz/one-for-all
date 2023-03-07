SELECT S.song_name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.table_reproduction_history AS R
INNER JOIN SpotifyClone.table_songs AS S
ON S.song_id = R.song_id
GROUP BY S.song_id
ORDER BY reproducoes DESC, S.song_name ASC
LIMIT 2;