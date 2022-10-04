## Task 1. Music_DB. 
# Scheme DB music1
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/music-scheme1.jpg)

# Commands

```sql
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	perf_name VARCHAR(40) NOT NULL,
	genre_id INTEGER NOT NULL REFERENCES Genre(id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY, 
	album_name VARCHAR(40) NOT NULL,
	release_date date,
	performer_id INTEGER NOT NULL REFERENCES Performer(id)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	duration time,
	album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL,
	release_date date,
	album_id INTEGER REFERENCES Album(id),
	track_id INTEGER NOT NULL REFERENCES Track(id)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
	genre_id INTEGER REFERENCES Genre(id),
	performer_id INTEGER REFERENCES Performer(id),
	CONSTRAINT gp PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS AlbumPerformer (
	album_id INTEGER REFERENCES Album(id),
	performer_id INTEGER REFERENCES Performer(id),
	CONSTRAINT ap PRIMARY KEY (album_id, performer_id)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	track_id INTEGER NOT NULL REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT tc PRIMARY KEY (track_id, collection_id)
);
```

## Scheme DB music2
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/music-scheme2.jpg)

## Task 2. Employees_DB.
# Scheme DB employees
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/Employees.jpg)

# Commands

```sql
CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	employee_name VARCHAR(60) NOT NULL,
	chief INTEGER REFERENCES Position_e(id)
);

CREATE TABLE IF NOT EXISTS Position_e (
	id SERIAL PRIMARY KEY,
	position_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS EmployeePosition (
	position_id INTEGER REFERENCES Position_e(id),
	employee_id INTEGER REFERENCES Employee(id),
	CONSTRAINT ep PRIMARY KEY (position_id, employee_id)
);
```

# Scheme DB employees2
![](https://github.com/n0iz3on3/sqlpy-PD-62_HW-2/blob/main/Employees2.jpg)

