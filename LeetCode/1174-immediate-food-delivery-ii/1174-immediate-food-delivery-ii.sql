WITH FirstOrder AS(
    SELECT
        customer_id,
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER()OVER(PARTITION BY customer_id ORDER BY order_date) AS rn
    FROM Delivery
),
ImmediateOrders AS(
    SELECT
        customer_id,
        CASE WHEN DATEDIFF(customer_pref_delivery_date, order_date) = 0 THEN 1 ELSE 0 END AS immediate
    FROM FirstOrder
    WHERE rn=1
)

SELECT ROUND(SUM(immediate)/COUNT(customer_id)*100,2) AS immediate_percentage 
FROM ImmediateOrders