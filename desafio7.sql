SELECT
A.artist_name AS artista,
AL.album_name AS album,
(SELECT COUNT(*) FROM SpotifyClone.table_following AS F
  WHERE F.artist_id = A.artist_id) AS seguidores
FROM SpotifyClone.table_artists AS A
INNER JOIN SpotifyClone.table_albums AS AL
ON AL.artist_id = A.artist_id
ORDER BY seguidores DESC,
artista ASC,
album ASC;