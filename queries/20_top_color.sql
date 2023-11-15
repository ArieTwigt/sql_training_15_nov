


SELECT 
        premium_german_cars.color,
        premium_german_cars.brand,
        premium_german_cars.model,
        premium_german_cars.car_type,
        SUM(premium_german_cars.amount) AS amount
FROM (
        SELECT cars.brand,
            cars.model,
            cars.color,
            cars.car_type,
            COUNT(*) AS amount,
            ROUND(AVG(cars.price), 2) AS average_price
        FROM registered_cars AS cars
        WHERE cars.brand IN ('AUDI', 'BMW', 'MERCEDES-BENZ')
        GROUP BY 1,2,3,4
        HAVING average_price BETWEEN 30000 AND 100000

) AS premium_german_cars

GROUP BY 1
ORDER BY amount DESC
