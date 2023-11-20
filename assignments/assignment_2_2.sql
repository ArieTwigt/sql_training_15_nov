<<<<<<< HEAD
SELECT cars.brand,
       cars.model,
       COUNT(*) AS amount,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2
ORDER BY 4 DESC
=======
-- From these 2-seater cars, which color has the highest price on average?
SELECT cars.brand,
       cars.model,
       cars.color,
       AVG(cars.price) as avg_price,
       COUNT(*) AS total
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2,3
ORDER BY 4 DESC
LIMIT 5;
>>>>>>> ad127ab9bf38e121f0c967dcb024c1e101c7b7a3
