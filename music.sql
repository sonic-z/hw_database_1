CREATE TABLE if not exists artists (
id SERIAL PRIMARY key,
name VARCHAR(40) NOT NULL
)

CREATE TABLE if not exists genres (
id SERIAL PRIMARY key,
name VARCHAR(40) NOT NULL
)

CREATE TABLE if not exists albums (
id SERIAL PRIMARY key,
name VARCHAR(40) NOT null,
year INTEGER NOT NULL
)

CREATE TABLE if not exists tracks (
id SERIAL PRIMARY key,
name VARCHAR(40) NOT null,
duration INTEGER NOT NULL,
album_id INTEGER NOT NULL REFERENCES albums(id)
)

CREATE TABLE if not exists collections (
id SERIAL PRIMARY key,
name VARCHAR(40) NOT null,
year INTEGER NOT NULL
)

CREATE TABLE if not exists TracksCollections (
id SERIAL PRIMARY KEY,
track_id INTEGER NOT NULL REFERENCES tracks(id),
collection_id INTEGER NOT NULL REFERENCES collections(id)
)


CREATE TABLE if not exists ArtistsAlbums (
id SERIAL PRIMARY KEY,
artist_id INTEGER NOT NULL REFERENCES artists(id),
album_id INTEGER NOT NULL REFERENCES albums(id)
)

CREATE TABLE if not exists ArtistsGenres (
id SERIAL PRIMARY KEY,
artist_id INTEGER NOT NULL REFERENCES artists(id),
genre_id INTEGER NOT NULL REFERENCES genres(id)
)
