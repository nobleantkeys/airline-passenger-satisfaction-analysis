USE [Passenger Satisfaction Airline]

SELECT *
FROM airline_passenger_satisfaction

--Counting how many people answered based on satisfaction

SELECT COUNT(*), Satisfaction
FROM airline_passenger_satisfaction
GROUP BY Satisfaction
--56.55% Neutral or Dissatisfied, 43.45% Satisfied


--======================================================
DESKTOP-7G6QA5U\SQLEXPRESS

--Overall Satisfaction for Business and Economy

SELECT Class, Satisfaction, COUNT(Satisfaction)
FROM airline_passenger_satisfaction
GROUP BY Class, Satisfaction
ORDER BY Class 


--=====================================================



--Calculating Average Ratings for each service segmented by satisfaction 

SELECT	Satisfaction,
		AVG(Departure_and_Arrival_Time_Convenience) AS Avg_DaA_Time_Convenience, 
		AVG(Ease_of_Online_Booking)AS Ease_Online_Booking,
		AVG(Check_in_Service) AS Avg_Checkin,
		AVG(Online_Boarding) AS Avg_Online_Boarding,
		AVG(Gate_Location) AS Gate_Location,
		AVG(On_Board_Service) AS OB_Service,
		AVG(Seat_Comfort) AS Seat_Comfort,
		AVG(Leg_Room_Service) AS Leg_Room,
		AVG(Cleanliness) AS Cleanliness,
		AVG(Food_and_Drink) AS Food_and_Drink,
		AVG(In_flight_Service) AS In_Flight_Service,
		AVG(In_flight_Wifi_Service)AS In_Flight_Wifi,
		AVG(In_flight_Entertainment) AS In_Flight_Entertainment,
		AVG(Baggage_Handling) AS Baggage_Handling
FROM airline_passenger_satisfaction
GROUP BY Satisfaction

--======================================================

--Calculating AVG Departure and Arrival Delay

SELECT	AVG(Departure_Delay) AS Avg_Departure_Delay, 
		AVG(Arrival_Delay) AS Avg_Arrival_Delay
FROM airline_passenger_satisfaction

--======================================================

--Calculating how many flights were delayed

SELECT COUNT(*)
FROM airline_passenger_satisfaction
WHERE Departure_Delay >0 OR Arrival_Delay >0

--======================================================

--Calculating if there are more returning or first time costumers

SELECT COUNT(*), Customer_Type
FROM airline_passenger_satisfaction
GROUP BY Customer_Type
-- 18.31% First Time, 81.69%

SELECT COUNT(Satisfaction), Customer_Type, Satisfaction
FROM airline_passenger_satisfaction
GROUP BY Customer_Type, Satisfaction
ORDER BY COUNT(Satisfaction) DESC
-- First-time customers show lower satisfaction, suggesting a possible retention risk.


--======================================================


--Avg departure/arrival delay time for each customer type

SELECT Customer_Type, 
       AVG(Departure_Delay) AS Avg_Departure_Delay,
       AVG(Arrival_Delay) AS Avg_Arrival_Delay
FROM airline_passenger_satisfaction
GROUP BY Customer_Type

