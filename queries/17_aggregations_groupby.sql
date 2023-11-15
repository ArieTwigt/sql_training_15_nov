SELECT cars.brand,
       cars.model,
       SUM(cars.price) AS total_price,
       ROUND(AVG(cars.price), 2) AS average_price,
       MIN(cars.price) AS minimal_price,
       MAX(cars.price) AS maximum_price
FROM registered_cars AS cars
GROUP BY 1, 2
ORDER BY average_price DESC