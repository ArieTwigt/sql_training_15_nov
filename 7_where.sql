SELECT cars.brand,
       cars.model,
       cars.price
FROM registered_cars AS cars
WHERE cars.tax < 1000
  AND cars.brand = 'BMW'