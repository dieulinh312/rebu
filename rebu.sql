--- Examine the 3 tables:
SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;


--- Cross join between riders and cars:
SELECT * FROM riders
CROSS JOIN cars;


--- Create a Trip Log with the trips and its users
SELECT * 
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

--- Create a link between the trips and the cars used during those trips
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

--- Strack the riders table on top of the new table named riders2
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

--- Average cost for a trip:
SELECT AVG(cost)
FROM trips;

--- Find all riders who have used REBU less than 500 times:
SELECT id, first, last
FROM riders
WHERE total_trips < 500;

--- Calculate the number of cars that are active:
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

--- Find the 2 cars that have the highest trips_completed:
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;



