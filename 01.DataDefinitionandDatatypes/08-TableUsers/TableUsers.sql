CREATE TABLE Users
(
	Id int IDENTITY(1,1) UNIQUE,
	Username NVARCHAR(30) UNIQUE NOT NULL,
	Password NVARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY CHECK(DATALENGTH(ProfilePicture)<900*1024),
	LastLoginTime DATE,
	IsDeleted NVARCHAR(5) NOT NULL CHECK(IsDeleted='true' OR isDeleted='false') 
)

INSERT INTO Users (Username, Password, ProfilePicture,LastLoginTime, IsDeleted)
VALUES('Ginko', 'Ginko123', 36, NULL, 'true')

INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES('Pesho', 'Pesho346', 450,NULL,'false')

INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES('Stamat', 'Stamat15', 21,NULL,'true')

INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES('John', 'John1234',500,NULL,'false')

INSERT INTO Users (Username, Password, ProfilePicture, LastLoginTime, IsDeleted)
VALUES('Tom', 'Tom87', 352,NULL,'false')