

WITH min_max_prices AS (

    SELECT cars.brand,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price
    FROM registered_cars AS cars
    WHERE cars.price BETWEEN 5000 AND 200000 -- remove outliers
    GROUP BY cars.brand
)

SELECT min_max_prices.brand,
       min_max_prices.max_price - min_max_prices.min_price 
            AS price_diff
FROM min_max_prices
ORDER BY price_diff DESC
