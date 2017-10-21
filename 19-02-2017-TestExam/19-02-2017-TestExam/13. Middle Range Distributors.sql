SELECT d.Name AS DistributorName,
i.Name AS IngredientName,
p.Name AS ProductName,AVG(f.Rate) AS AverageRate
FROM Ingredients AS i
JOIN Distributors AS d ON i.DistributorId = d.Id
JOIN ProductsIngredients AS pi ON i.Id = pi.IngredientId 
JOIN Products as p ON pi.ProductId = p.Id 
JOIN Feedbacks as f ON p.Id = f.ProductId
GROUP BY d.Name,i.Name,p.Name
HAVING AVG(f.Rate) BETWEEN 5 AND 8
ORDER BY d.Name,i.Name,p.Name