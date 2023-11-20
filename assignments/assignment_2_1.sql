SELECT cars.brand,
       cars.model,
       COUNT(*) AS amount
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2
ORDER BY 3 DESC