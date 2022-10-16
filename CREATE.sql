CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL       PRIMARY KEY,
	genre_name      VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL       PRIMARY KEY,
	perf_name       VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL       PRIMARY KEY, 
	album_name      VARCHAR(40) NOT NULL,
	release_year    INTEGER CHECK (release_year > 1980)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL       PRIMARY KEY,
	track_name      VARCHAR(60) NOT NULL,
	duration_sec    INTEGER 
	                CHECK (duration_sec > 100),
	album_id        INTEGER 
	                REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL       PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL,
	release_year    INTEGER 
	                CHECK (release_year > 1980)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
	genre_id        INTEGER 
	                REFERENCES Genre(id),
	performer_id    INTEGER 
	                REFERENCES Performer(id),
	                CONSTRAINT gp 
	                PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
	album_id        INTEGER 
	                REFERENCES Album(id),
	performer_id    INTEGER 
	                REFERENCES Performer(id),
	                CONSTRAINT ap 
	                PRIMARY KEY (album_id, performer_id)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	track_id        INTEGER 
	                REFERENCES Track(id),
	collection_id   INTEGER 
	                REFERENCES Collection(id),
	                CONSTRAINT tc 
	                PRIMARY KEY (track_id, collection_id)
);