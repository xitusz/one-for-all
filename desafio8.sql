SELECT
A.artist_name AS artista,
AL.album_name AS album
FROM SpotifyClone.table_albums AS AL
INNER JOIN SpotifyClone.table_artists AS A
ON AL.artist_id = A.artist_id
WHERE A.artist_name = 'Walter Phoenix'
ORDER BY AL.album_name ASC;