USE platzi_blog;

ALTER TABLE people
	ADD COLUMN birth_date DATETIME,
    CHANGE COLUMN age age INT NOT NULL,
    DROP COLUMN last_name;