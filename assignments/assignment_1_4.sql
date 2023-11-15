SELECT DISTINCT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE cars.seats > 7
ORDER BY cars.price
/*
-- If you only want the cheapest car in the result
SELECT DISTINCT cars.brand, cars.model, cars.price
FROM registered_cars AS cars
WHERE cars.seats > 7
  AND cars.price = (
    SELECT MIN(cars2.price)
    FROM registered_cars AS cars2
    WHERE cars2.seats > 7
  )
*/