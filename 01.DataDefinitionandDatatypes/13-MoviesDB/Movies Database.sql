CREATE TABLE Directors
(
	Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	DirectorName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)

CREATE TABLE Genres
(
	Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	GenreName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)

CREATE TABLE Categories
(
	Id INT IDENTITY(1,1) NOT NULL  PRIMARY KEY,
	CategoryName NVARCHAR(255) NOT NULL,
	Notes NVARCHAR(255)
)


CREATE TABLE Movies
(
	Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Title NVARCHAR(255) NOT NULL,
	DirectorID INT UNIQUE,
	CopyrightYear DATE,
	Length DECIMAL(10,2),
	GenreID INT UNIQUE,
	CategoryID INT,
	Rating INT,
	Notes NVARCHAR(255)
)

INSERT INTO Directors(DirectorName, Notes)
Values('Peter', NULL)
INSERT INTO Directors(DirectorName, Notes)
Values('George', 'Nearly done!')
INSERT INTO Directors(DirectorName, Notes)
Values('Maria', 'Completely done!')
INSERT INTO Directors(DirectorName, Notes)
Values('Ivanina', NULL)
INSERT INTO Directors(DirectorName, Notes)
Values('Radka', NULL)

INSERT INTO Genres(GenreName, Notes)
Values('Pesho', NULL)
INSERT INTO Genres(GenreName, Notes)
Values('Tomi', 'Completely done!')
INSERT INTO Genres(GenreName, Notes)
Values('Annie', NULL)
INSERT INTO Genres(GenreName, Notes)
Values('Thresh', 'Completely done!')
INSERT INTO Genres(GenreName, Notes)
Values('Cho', 'Nearly done!')

INSERT INTO Categories(CategoryName, Notes)
Values('Blitzcrank', 'Completely done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Corcki', 'Nearly done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Ashe', NULL)
INSERT INTO Categories(CategoryName, Notes)
Values('Bard', 'Nearly done!')
INSERT INTO Categories(CategoryName, Notes)
Values('Ezreal', 'Completely done!')

INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Scary Movie', 11233412, NULL, NUll, 643675, 3, 6,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Action Movie', 535123, NULL, NUll, 123453, 2, 4,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Romantic Movie', 7657457, NULL, NUll, 51532, 1, 3,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Love movie', 123547568, NULL, NUll, 4343, 4, 2,NULL)
INSERT INTO Movies(Title, DirectorID, CopyrightYear, Length, GenreID, CategoryID,Rating,Notes)
Values('Dramatic Movie', 97876543, NULL, NUll, 123, 1, 5,NULL)
