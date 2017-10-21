SELECT TOP(1) WITH TIES cn.Name AS CountryName,AVG(Rate) AS FeedbackRate 
FROM Feedbacks AS f
JOIN Customers as c ON f.CustomerId = c.Id
JOIN Countries as cn ON c.CountryId = cn.Id
GROUP BY cn.Name
ORDER BY FeedbackRate DESC
