SELECT TOP(5) a.AirlineID,	AirlineName,	Nationality	,Rating 
FROM Airlines AS a
JOIN Flights AS f ON a.AirlineID = f.AirlineID
GROUP BY a.AirlineID,a.AirlineName,a.Nationality,a.Rating
ORDER BY a.Rating DESC ,a.AirlineID

