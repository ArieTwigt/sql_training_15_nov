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