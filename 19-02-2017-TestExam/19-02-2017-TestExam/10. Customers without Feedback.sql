SELECT CONCAT(FirstName, ' ', LastName) AS [Name], PhoneNumber, Gender
FROM Customers
WHERE Id NOT IN (SELECT CustomerId FROM Feedbacks)

   