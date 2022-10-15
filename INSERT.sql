INSERT INTO Genre (genre_name)
VALUES ('Techno'),
       ('House, Electronic'),
       ('Alternative'),
       ('Pop'),
       ('Hip-hop');
       
INSERT INTO Performer (perf_name)
VALUES ('Alexander Alar'),
       ('Far & High'),
       ('Locked Club'),
       ('Psyduck'),
       ('Alvee Feat. Adrian Bluper'),
       ('Linkin Park'),
       ('Alphaville'),
       ('Eminem');
      
INSERT INTO Album (album_name, release_year)
VALUES ('Tokyo', 2018),
       ('Not Alone - EP', 2020),
       ('Egipet', 2020),
       ('Hybrid Theory', 2000),
       ('Meteora', 2003),
       ('Minutes to Midnight', 2007),
       ('Forever Young', 1984),
       ('The Marshall Mathers LP', 2001),
       ('Black Sheep', 2019),
       ('AlveeAlvee', 2019);
      
INSERT INTO Track (track_name, duration_sec, album_id)
VALUES ('Alexander Alar, Sonita - Tokyo', 445, 1),
       ('Far & High - Alone', 418, 2),
       ('Far & High feat. Annett - All I Say', 354, 2),
       ('Far &High - Voyager', 428, 2),
       ('Far & High - I''ve Got the Powder', 440, 2),
       ('Locked Club - Edu V Egipet', 358, 3),
       ('Linkin Park - Papercut', 184, 4),
       ('Linkin Park - In the End', 216, 4),
       ('Linkin Park - Somewhere I Belong', 213, 5),
       ('Linkin Park - Lying from You', 175, 5),
       ('Linkin Park - Faint', 162, 5),
       ('Linkin Park - Numb', 188, 5),
       ('Linkin Park - Session', 143, 5),
       ('Linkin Park - No More Sorrow', 221, 6),
       ('Linkin Park - Given Up', 189, 6),
       ('Linkin Park - What I''ve Done', 205, 6),
       ('Alphaville - Big in Japan', 235, 7),
       ('Alphaville - Forever Young', 226, 7),
       ('Alphaville - Sounds Like a Melody', 267, 7),
       ('Eminem feat. Dido - Stan', 404, 8),
       ('Eminem - The Real Slim Shady', 284, 8),
       ('Eminem - Loose Yourself', 326, 8),
       ('Eminem - Mockingbird', 250, 8),
       ('Eminem - When I''m Gone', 281, 8),
       ('Psyduck - Black Sheep ((Original Mix))', 523, 9),
       ('Alvee Feat. Adrian Bluper - Perdido ((Original Mix))', 417, 10);
      
INSERT INTO Collection (collection_name, release_year)
VALUES ('First Harvest 1984-1992', 1992),
       ('All of Fame', 2008),
       ('Curtain Call: The Hits', 2005),
       ('Technowave', 2018),
       ('House, Dance', 2020),
       ('Crazy lane', 2020),
       ('All best', 2020),
       ('Mix-Mix', 2021);
      
INSERT INTO GenrePerformer (genre_id, performer_id)
VALUES (1, 1),
       (1, 2),
       (1, 4),
       (1, 5),
       (2, 1),
       (2, 2),
       (2, 3),
       (2, 5),
       (3, 6),
       (4, 7),
       (5, 8);
      
INSERT INTO AlbumPerformer (album_id, performer_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 6),
       (5, 6),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 4),
       (10, 5);
      
INSERT INTO TrackCollection (track_id, collection_id)
VALUES (1, 4),
       (2, 4),
       (3, 5),
       (4, 5),
       (5, 5),
       (6, 5),
       (7, 2),
       (8, 2),
       (9, 2),
       (10, 2),
       (11, 2),
       (12, 2),
       (13, 2),
       (14, 2),
       (15, 2),
       (16, 2),
       (17, 1),
       (18, 1),
       (19, 1),
       (20, 3),
       (21, 3),
       (22, 3),
       (23, 3),
       (24, 3),
       (25, 7),
       (25, 6),
       (26, 8),
       (26, 7);

       