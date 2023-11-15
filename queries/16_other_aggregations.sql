SELECT SUM(cars.price) AS total_price,
       AVG(cars.price) AS average_price,
       MIN(cars.price) AS minimal_price,
       MAX(cars.price) AS maximum_price
FROM registered_cars AS cars