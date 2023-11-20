<<<<<<< HEAD
SELECT cars.color,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       AVG(cars.price) AS avg_price,
       COUNT(*) AS amount
FROM registered_cars AS cars
WHERE cars.brand = 'VOLKSWAGEN'
  AND cars.model = 'GOLF'
GROUP BY 1
ORDER BY amount DESC
=======
-- Provide an overview in which you can see the, min, max, and average price of each VOLKSWAGEN GOLF (brand and model) grouped by colour

SELECT cars.brand,
       cars.model,
       cars.color, 
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       AVG(cars.price) AS avg_price
FROM registered_cars AS cars
WHERE cars.brand = "VOLKSWAGEN"
  AND cars.model = "GOLF"
GROUP BY 1,2,3
>>>>>>> ad127ab9bf38e121f0c967dcb024c1e101c7b7a3
