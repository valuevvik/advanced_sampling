SELECT name, duration 
FROM Tracks 
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT name, duration 
FROM Tracks 
WHERE duration >= 210;

SELECT name, year 
FROM Compilations 
WHERE year BETWEEN 2018 AND 2020;

SELECT name 
FROM Artists 
WHERE name NOT LIKE '% %';

SELECT name 
FROM Tracks 
WHERE LOWER(name) LIKE '%мой%' 
   OR LOWER(name) LIKE '%my%';
SELECT g.name AS genre_name, COUNT(ag.artistID) AS artist_count
FROM Genres g
LEFT JOIN ArtistGenre ag ON g.genreID = ag.genreID
GROUP BY g.genreID, g.name
ORDER BY artist_count DESC;

SELECT COUNT(t.trackID) AS track_count
FROM Tracks t
JOIN Albums a ON t.albumID = a.albumID
WHERE a.year BETWEEN 2019 AND 2020;

SELECT a.name AS album_name, AVG(t.duration) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.albumID = t.albumID
GROUP BY a.albumID, a.name
ORDER BY avg_duration DESC;

SELECT ar.name AS artist_name
FROM Artists ar
WHERE ar.artistID NOT IN (
    SELECT DISTINCT aa.artistID
    FROM ArtistAlbum aa
    JOIN Albums al ON aa.albumID = al.albumID
    WHERE al.year = 2020
);

SELECT DISTINCT c.name AS compilation_name
FROM Compilations c
JOIN CompilationTrack ct ON c.compilationID = ct.compilationID
JOIN Tracks t ON ct.trackID = t.trackID
JOIN Albums al ON t.albumID = al.albumID
JOIN ArtistAlbum aa ON al.albumID = aa.albumID
JOIN Artists ar ON aa.artistID = ar.artistID
WHERE ar.name = 'Queen';
