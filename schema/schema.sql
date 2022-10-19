-- Item Schema
create table Item(
	id int primary key IDENTITY,
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	publish_date text,
	archived boolean,
	FOREIGN Key(lable_id) REFERENCES lable(id),
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
);

-- Label Schema
create table Label(
	id int primary key IDENTITY,
	title varchar(20),
	color varchar(20),
	items varchar(256)
)

-- Book Schema
create table Book(
	publisher varchar(20),
	cover_state varchar(20),
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	publish_date text,
	archived boolean,
	FOREIGN Key(lable_id) REFERENCES lable(id),
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
)

-- Author Schema
create table author(
    id int primary key ,
	first_name varchar(40),
	last_name varchar(40)
);

-- Game Schema
create table game(
	id int primary key,
	name VARCHAR(40),
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	multiplayer BOOLEAN,
	last_played_at DATE,
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
	FOREIGN Key(source_id) REFERENCES source(id),
	FOREIGN Key(lable_id) REFERENCES lable(id)
);