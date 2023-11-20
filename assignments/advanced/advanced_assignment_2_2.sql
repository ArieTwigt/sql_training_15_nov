    

SELECT car_type_count.car_type,
       car_type_count.count,
       (car_type_count.count * 100 / 
        total_cars.total_count) AS percentage


FROM (
    SELECT car_type,
           COUNT(*) AS count
    FROM registered_cars
    GROUP BY car_type
) AS car_type_count,
(
    SELECT COUNT(*) AS total_count
    FROM registered_cars
) AS total_cars
ORDER BY percentage DESC
LIMIT 3
    