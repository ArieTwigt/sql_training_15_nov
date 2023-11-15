SELECT cars.brand,
       cars.model,
       AVG(cars.price) as average_price
FROM registered_cars AS cars
WHERE cars.brand = "MAZDA"
GROUP BY 1,2
HAVING average_price < 30000