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
