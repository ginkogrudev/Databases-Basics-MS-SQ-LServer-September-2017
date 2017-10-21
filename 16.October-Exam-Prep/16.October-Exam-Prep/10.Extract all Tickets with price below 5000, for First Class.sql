SELECT TicketID, a.AirportName AS Destination  ,CONCAT(c.FirstName, ' ',c.LastName) AS  CustomerName 
FROM Tickets as t 
JOIN Flights as f ON f.FlightID = t.FlightID
JOIN Airports as a ON a.AirportID = f.DestinationAirportID
JOIN Customers as c ON c.CustomerID = t.CustomerID
WHERE Price < 5000 AND Class = 'First'
ORDER BY TicketID