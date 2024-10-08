CREATE TABLE Star (
	ID SERIAL PRIMARY KEY,
	Name VARCHAR(255),
	Date_Of_Birth DATE
);

CREATE TABLE Director (
	ID SERIAL PRIMARY KEY,
	Name VARCHAR(255),
	Country_ID INTEGER,
	FOREIGN KEY (Country_ID) REFERENCES Director_Countries(ID)
);

CREATE TABLE Writer (
  ID SERIAL PRIMARY KEY,
  Name VARCHAR(255),
  Email VARCHAR(255)
);

CREATE TABLE Director_Countries (
	ID SERIAL PRIMARY KEY,
	Name VARCHAR(255)
);

CREATE TABLE Film_Genre (
	ID SERIAL PRIMARY KEY,
	Name VARCHAR(255)
);

CREATE TABLE Film (
	ID SERIAL PRIMARY KEY,
	Title VARCHAR(255),
	ReleaseYear INTEGER,
	Genre_ID INTEGER,
	Rating INTEGER,
	Director_ID INTEGER,
	Star_ID INTEGER,
	Writer_ID INTEGER,
	FOREIGN KEY (Genre_ID) REFERENCES Director(ID),
	FOREIGN KEY (Director_ID) REFERENCES Director(ID),
	FOREIGN KEY (Star_ID) REFERENCES Star(ID),
	FOREIGN KEY (Writer_ID) REFERENCES Writer(ID)
);

