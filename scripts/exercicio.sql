CREATE TABLE airline(
id SERIAL PRIMARY KEY,
name TEXT NOT NULL UNIQUE,
acronym TEXT NOT NULL UNIQUE
);

CREATE TABLE flights(
id SERIAL PRIMARY KEY,
exit_time TIMESTAMP NOT NULL,
entrance_time TIMESTAMP NOT NULL,
airline_id INTEGER NOT NULL REFERENCES "airline"("id"),
acronym TEXT NOT NULL UNIQUE
);

CREATE TABLE airport_flights_starts(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    flights_id INTEGER NOT NULL REFERENCES "flights"("id")
);

CREATE TABLE airport_flights_ends(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    flights_id INTEGER NOT NULL REFERENCES "flights"("id")
);