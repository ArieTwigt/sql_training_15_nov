<<<<<<< HEAD

WITH cars_seats AS (
    SELECT cars.brand,
           cars.model,
           cars.price / cars.seats AS price_per_seat
    FROM registered_cars AS cars
)

SELECT cars_seats.brand,
       cars_seats.model,
       AVG(cars_seats.price_per_seat) as average_price_per_seat
FROM cars_seats
GROUP BY 1,2
ORDER BY 3 DESC
=======
-- What car has the highest price per seat?
SELECT cars.brand,
       cars.model,
       cars.seats,
       cars.price,
       cars.price / cars.seats AS price_per_seat
FROM registered_cars AS cars
ORDER BY price_per_seat DESC
>>>>>>> ad127ab9bf38e121f0c967dcb024c1e101c7b7a3
