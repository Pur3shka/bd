CREATE TABLE IF NOT EXISTS genres (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_genres (
artist_id INTEGER REFERENCES artists(id),
genre_id INTEGER REFERENCES genres(id),
PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS album_artists (
album_id INTEGER REFERENCES albums(id),
artist_id INTEGER REFERENCES artists(id),
PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
duration INTEGER NOT NULL,
album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS collections (
id SERIAL PRIMARY KEY,
title VARCHAR(100) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_tracks (
collection_id INTEGER REFERENCES collections(id),
track_id INTEGER REFERENCES tracks(id),
PRIMARY KEY (collection_id, track_id)
);

insert into genres 
(name)
values ('Jazz');
insert into genres 
(name)
values ('Rock');
insert into genres 
(name)
values ('Pop');
insert into genres 
(name)
values ('House');

insert into artists  
(name,)
values ('Steve Lacy');

insert into artists  
(name)
values ('Linkin Park');

insert into artists  
(name)
values ('Ariana Grande');

insert into artists  
(name)
values ('David Guetta');


insert into artist_genres
(genre_id, artist_id)
values (1, 1);

insert into artist_genres
(genre_id, artist_id)
values (2, 2);

insert into artist_genres
(genre_id, artist_id)
values (3, 3);

insert into artist_genres
(genre_id, artist_id)
values (4, 4);





insert into albums
(title, year)
values ('The Lo-Fis', '2020');

insert into albums
(title, year)
values ('Meteora', '2003');

insert into albums
(title, year)
values ('yes,and?', '2024');

insert into albums
(title, year)
values ('Listen', '2014');



insert into album_artists
(album_id, artist_id)
values (1, 1);

insert into album_artists
(album_id, artist_id)
values (2, 2);

insert into album_artists
(album_id, artist_id)
values (3, 3);

insert into album_artists
(album_id, artist_id)
values (4, 4);





insert into tracks 
(title, duration, album_id)
values ('atomic vomit', 130, 1);

insert into tracks 
(title, duration, album_id)
values ('When I', 203, 1);

insert into tracks 
(title, duration, album_id)
values ('Somewhere I Belong', 409, 2);

insert into tracks 
(title, duration, album_id)
values ('Lying friom You', 255, 2);

insert into tracks 
(title, duration, album_id)
values ('yes,and?', 255, 3);

insert into tracks 
(title, duration, album_id)
values ('Dangerous', 323, 4);

insert into tracks 
(title, duration, album_id)
values ('What I Did for Love', 327, 4);

