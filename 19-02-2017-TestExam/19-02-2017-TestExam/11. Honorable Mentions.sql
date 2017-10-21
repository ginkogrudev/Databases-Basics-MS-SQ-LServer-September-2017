SELECT ProductId ,CONCAT(FirstName, ' ',LastName) AS CustomerName,ISNULL(F.Description, '') AS FeedbackDescription
FROM Customers AS c
JOIN Feedbacks AS f ON f.CustomerId = c.Id  
WHERE  c.Id IN (
	SELECT CustomerId
	FROM Feedbacks AS f
	GROUP BY CustomerId
	HAVING COUNT(f.Id) >= 3
)
ORDER BY ProductId,CustomerName,F.Id