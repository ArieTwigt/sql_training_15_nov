SELECT DISTINCT cars.brand, cars.model
FROM registered_cars AS cars
WHERE cars.brand = "VOLVO"
ORDER BY cars.brand