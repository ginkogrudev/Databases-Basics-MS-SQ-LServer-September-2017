SELECT TOP(15) i.Name,Description,c.Name AS [CountryName]  
FROM Ingredients AS i
JOIN Countries AS c ON i.OriginCountryId = c.Id
WHERE c.Name = 'Bulgaria' OR c.Name = 'Greece'
ORDER BY i.Name,c.Name