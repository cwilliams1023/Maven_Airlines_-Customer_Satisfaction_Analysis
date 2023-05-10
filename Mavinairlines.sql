/****** Script for SelectTopNRows command from SSMS  ******/

 -- Count total male passengers
 SELECT COUNT(*) AS Total_Male_Passengers
  FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
  WHERE Gender = 'Male'

  --Count total female passengers
 SELECT COUNT(*) AS Total_Female_Passengers
  FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
  WHERE Gender = 'Female'

 -- Count total satisfied passengers
 SELECT COUNT(*) AS Total_Satisfied_Passengers
 FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
 WHERE Satisfaction = 'Satisfied'

  --Count total neutral or dissatisfied passengers
 SELECT COUNT(*) AS Total_NeutralorDissatisfied_Passengers
 FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
 WHERE Satisfaction = 'Neutral or Dissatisfied'

 -- Count total passengers
SELECT COUNT(*) AS Total_Passengers
  FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]

 -- Count total passengers by class
SELECT class, COUNT(*) AS Total_Passengers
  FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
  GROUP BY Class

 -- Count total passengers by class
SELECT Type_of_Travel, COUNT(*) 
  FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]
  GROUP BY Type_of_Travel 

-- calculate average flight distance (in miles)
SELECT AVG(flight_distance) AS Average_Flight_Distance
FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]

ALTER TABLE [Maven Airlines].[dbo].airline_passenger_satisfaction
ALTER COLUMN Departure_Delay int

-- calculate average departure delay (in minutes)
SELECT AVG(Departure_Delay) AS Average_Departure_Delay
FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]

ALTER TABLE [Maven Airlines].[dbo].airline_passenger_satisfaction
ALTER COLUMN Arrival_Delay int

-- calculate average departure delay (in minutes)
SELECT AVG(Arrival_Delay) AS Average_Arrival_Delay
FROM [Maven Airlines].[dbo].[airline_passenger_satisfaction]




