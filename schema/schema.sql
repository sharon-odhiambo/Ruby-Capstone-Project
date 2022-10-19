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