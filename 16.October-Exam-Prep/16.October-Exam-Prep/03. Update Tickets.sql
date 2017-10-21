UPDATE Tickets
SET Price = Price * 0.5 + Price
WHERE FlightID IN 
(
SELECT f.FlightID 
FROM Airlines AS a
JOIN Flights AS f ON f.AirlineID = a.AirlineID
JOIN Tickets AS t ON t.FlightID = f.FlightID
WHERE a.AirlineID = 1
GROUP BY a.AirlineID, f.FlightID
)
