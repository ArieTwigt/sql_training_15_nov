<<<<<<< HEAD
SELECT cars.brand,
       cars.model,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
WHERE cars.car_type = 'hatchback'
  AND cars.price < 100000
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1
=======
-- How many cars of the type hatchback have a higher price than 40.000?
SELECT COUNT(*) as total
FROM registered_cars AS cars
WHERE cars.car_type = "hatchback"
  AND cars.price > 40000
>>>>>>> ad127ab9bf38e121f0c967dcb024c1e101c7b7a3
