SELECT b.product_name AS product_name, a.year AS year, a.price AS price
FROM Sales a LEFT JOIN Product b ON a.product_id = b.product_id