SELECT cars.brand,
       cars.model,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
WHERE cars.car_type = 'hatchback'
  AND cars.price < 100000
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1