CREATE DATABASE netflix_project;

USE netflix_project;

CREATE TABLE netflix_titles (
    show_id VARCHAR(20),
    type VARCHAR(50),
    title TEXT,
    director TEXT,
    cast_members TEXT,
    country TEXT,
    date_added TEXT,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

SHOW TABLES;
SHOW DATABASES;
DESC netflix_titles;


SELECT * 
FROM netflix_titles
LIMIT 10;

