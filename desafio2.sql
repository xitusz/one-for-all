SELECT
(SELECT COUNT(*) FROM SpotifyClone.table_songs) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.table_artists) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.table_albums) AS albuns;