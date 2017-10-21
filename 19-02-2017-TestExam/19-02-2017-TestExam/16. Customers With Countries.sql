CREATE VIEW v_UserWithCountries AS
SELECT CONCAT(FirstName,' ',LastName) AS CustomerName,
 c.Age,c.Gender,cn.Name AS CountryName
FROM Customers AS c
JOIN Countries AS cn ON c.CountryId = cn.Id 