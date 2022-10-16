-- название и год выхода альбомов, вышедших в 2018 году
SELECT album_name, release_year 
  FROM Album
 WHERE release_year = 2018;
 
-- название и продолжительность самого длительного трека
SELECT track_name, duration_sec
  FROM Track
 ORDER BY duration_sec DESC
 LIMIT 1;
 
 -- название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name
  FROM Track 
 WHERE duration_sec >= 210;
 
--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name
  FROM Collection
 WHERE release_year BETWEEN 2018 AND 2020;
 
-- исполнители, чье имя состоит из 1 слова
SELECT perf_name
  FROM Performer
 WHERE NOT perf_name 
  LIKE '% %';
 
-- название треков, которые содержат слово "Я"/"I"
SELECT track_name
  FROM Track
 WHERE track_name
  LIKE '%I''%';