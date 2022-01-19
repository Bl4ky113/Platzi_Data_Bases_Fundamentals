CREATE SCHEMA IF NOT EXISTS platzi_blog DEFAULT CHARACTER SET utf8;

USE platzi_blog;

CREATE TABLE IF NOT EXISTS people (
	id_people INTEGER NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(42) NOT NULL,
    last_name VARCHAR(42) NOT NULL,
    age SMALLINT DEFAULT 0,
	PRIMARY KEY (id_people)
);

INSERT INTO people (first_name, last_name, age) 
VALUES 
	("Martín", "Hernández", 16),
    ("Hello", "GoodBye", 24),
    ("Profe", "Camilo", 34);
