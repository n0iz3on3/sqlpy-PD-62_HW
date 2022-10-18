-- количество исполнителей в каждом жанре
SELECT genre_name, COUNT(perf_name)
  FROM Genre AS g
	   LEFT JOIN GenrePerformer AS gp 
	   ON g.id = gp.genre_id
	   LEFT JOIN Performer AS p 
	   ON gp.performer_id = p.id
 GROUP BY genre_name
 ORDER BY COUNT(p.id) DESC
 
-- треки, вошедшие в альбомы 2019-2020 годов
SELECT track_name, release_year
  FROM Album AS a
       LEFT JOIN Track AS t 
       ON t.album_id = a.id
 WHERE (release_year >= 2019) 
   AND (release_year <= 2020)
    
-- средняя продолжительность треков по каждому альбому
SELECT album_name, round(AVG(duration_sec), 2)
  FROM Album AS a
       LEFT JOIN Track AS t 
       ON t.album_id = a.id
 GROUP BY album_name
 ORDER BY AVG(duration_sec)
 
-- все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT perf_name
  FROM Performer AS p
 WHERE perf_name NOT IN (
       SELECT DISTINCT perf_name
         FROM Performer AS p
      		  LEFT JOIN AlbumPerformer AS ap ON p.id = ap.performer_id
      		  LEFT JOIN Album AS a ON a.id = ap.album_id
        WHERE release_year = 2020
)
 ORDER BY perf_name

-- названия сборников, в которых присутствует конкретный исполнитель (Far & High)
SELECT DISTINCT collection_name
  FROM Collection AS c
       LEFT JOIN TrackCollection AS tc 
       ON c.id = tc.collection_id
       LEFT JOIN Track AS t 
       ON t.id = tc.track_id 
       LEFT JOIN Album AS a 
       ON a.id = t.album_id 
       LEFT JOIN AlbumPerformer AS ap 
       ON ap.album_id = a.id 
       LEFT JOIN Performer AS p 
       ON p.id = ap.performer_id 
 WHERE perf_name 
  LIKE '%Far & High%'
 ORDER BY collection_name
 
-- название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name
  FROM Album AS a
       LEFT JOIN AlbumPerformer AS ap 
       ON a.id = ap.album_id 
       LEFT JOIN Performer AS p 
       ON p.id = ap.performer_id 
       LEFT JOIN GenrePerformer AS gp 
       ON p.id = gp.performer_id 
       LEFT JOIN Genre AS g 
       ON g.id = gp.genre_id 
 GROUP BY album_name
HAVING COUNT(DISTINCT genre_name) > 1
 ORDER BY album_name
 
-- наименование треков, которые не входят в сборники
SELECT track_name
  FROM Track AS t
       LEFT JOIN TrackCollection AS tc 
       ON t.id = tc.track_id 
 WHERE tc.track_id IS NULL
 
-- исполнителя(-ей), написавшего самый короткий по продолжительности трек
SELECT perf_name, duration_sec
  FROM Track AS t
       LEFT JOIN Album AS a 
       ON a.id = t.album_id 
       LEFT JOIN AlbumPerformer AS ap 
       ON ap.album_id = a.id 
       LEFT JOIN Performer AS p 
       ON p.id = ap.performer_id 
 GROUP BY perf_name, duration_sec
HAVING duration_sec = (SELECT MIN(duration_sec) FROM Track)
 ORDER BY perf_name
 
-- название альбомов, содержащих наименьшее количество треков
SELECT DISTINCT album_name
  FROM Album AS a
       LEFT JOIN Track AS t 
       ON t.album_id = a.id 
 WHERE t.album_id IN (
       SELECT album_id
         FROM Track
        GROUP BY album_id
       HAVING COUNT(id) = (
              SELECT COUNT(id)
                FROM Track
               GROUP BY album_id
               ORDER BY COUNT
               LIMIT 1
       )
)
 ORDER BY album_name