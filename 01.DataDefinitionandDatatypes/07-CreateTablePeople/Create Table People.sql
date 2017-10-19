CREATE TABLE People
(
	Id int IDENTITY(1,1) UNIQUE,
	Name NVARCHAR(225) NOT NULL,
	Picture VARBINARY CHECK(DATALENGTH(Picture)<900*1024),
	Height DECIMAL(10, 2),
	Weight DECIMAL(10,2),
	Gender VARCHAR(1) NOT NULL Check(Gender ='m' OR Gender ='f'),
	Birthdate INT NOT NULL,
	Biography NVARCHAR(255)
)

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('Lina',NULL, 2,522, 'f', 22, 'co-worker')

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('George',NULL, NULL,3.6, 'm', 32, 'captain')

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('Joshina',NULL, NULL,7.8, 'f', 14, 'Driver')

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('Tony',NULL, NULL,20.22, 'm', 15, 'Pilot')

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('Petra',NULL, NULL,31.01, 'f', 1, 'Worker')
