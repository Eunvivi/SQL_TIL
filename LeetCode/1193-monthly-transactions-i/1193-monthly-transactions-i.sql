-- SELECT
--     DATEFORMAT(trans_date,'%Y-%m') AS MONTH,
--     country,
--     COUNT(state) AS  trans_count,
--     CASE WHEN(state='approved')THEN COUNT(*) END AS approved_count
--     SUM(amount) AS trans_total_amount
--     CASE WHEN(state='approved')THEN SUM(*) END AS approved_total_amount
-- FROM Transactions
-- GROUP BY trans_date

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS MONTH,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country; 