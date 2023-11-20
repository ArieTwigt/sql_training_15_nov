SELECT cars.brand,
       cars.model,
       COUNT(*) AS amount,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2
ORDER BY 4 DESC