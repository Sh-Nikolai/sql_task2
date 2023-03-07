create table if not exists gener(
id serial primary key,
name varchar (60) unique
);
create table if not exists singer (
id serial primary key,
name varchar (60)
);
create table if not exists gener_singer(
id serial primary key,
gener_id integer not null references gener(id),
singer_id integer not null references singer (id)
);
create table if not exists album (
id serial primary key,
name varchar (60),
year_realise integer
);
create table if not exists singer_album(
id serial primary key,
singer_id integer not null references singer(id),
album_id integer not null references album(id)
);
CREATE TABLE IF NOT EXISTS track (
id SERIAL PRIMARY KEY,
name VARCHAR(60),
duration integer, 
album_id integer REFERENCES album(id)
);
create table if not exists mix(
id serial primary key,
name varchar (60),
year_realise integer
);
create table if not exists mix_track (
id serial primary key,
track_id integer not null references track (id),
mix_id integer not null references mix (id)
);



