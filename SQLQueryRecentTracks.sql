SELECT artist, next_artist, COUNT(*) AS cnt
FROM
(SELECT artist, LAG(artist, 1) OVER (ORDER BY played_at DESC) AS next_artist
FROM dbo.recent_tracks) song_and_prev
WHERE next_artist IS NOT NULL
GROUP BY artist, next_artist