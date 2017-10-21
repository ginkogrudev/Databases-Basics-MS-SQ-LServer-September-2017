SELECT c.CustomerID,CONCAT(FirstName, ' ' , LastName) AS FullName ,t.TownName AS HomeTown
FROM Customers AS c 
JOIN Towns as t ON t.TownID = c.HomeTownID
JOIN Tickets as ti ON ti.CustomerID = c.CustomerID
JOIN Flights AS f ON ti.FlightID = f.FlightID
WHERE c.HomeTownID IN (f.OriginAirportID)
ORDER BY CustomerID
