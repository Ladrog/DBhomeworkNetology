create table if not EXISTS genres(
	id SERIAL primary key,
	gener_name varchar(60) UNIQUE not null
	);
	
create table if not EXISTS artist(
	id SERIAL primary key,
	artist_name varchar(60) not null
	);
	
create table if not EXISTS artist_genres(
	artist_id integer not null references artist(id),
	genre_id integer not null references genres(id)
	);
	
create table if not EXISTS albums(
	id SERIAL primary key,
	album_name varchar(60) not null,
	release_year date not null
	);

create table if not EXISTS artist_albums(
	artist_id integer not null references artist(id),
	album_id integer not null references albums(id)
	);

create table if not EXISTS tracks (
	id SERIAL primary key,
	album_id integer references albums(id),
	track_name varchar(60) not null,
	duration interval minute to second
	);

create table if not EXISTS compilations(
	id SERIAL primary key,
	comp_name varchar(60) not null,
	release_year date not null
	);

create table if not EXISTS track_compilations(
	track_id integer references tracks(id),
	comilation_id integer references compilations(id)
	);
