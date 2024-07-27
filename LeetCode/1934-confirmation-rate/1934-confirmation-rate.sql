SELECT a.user_id,
    ROUND(AVG(IF(b.action='confirmed',1,0)),2) AS confirmation_rate 
FROM Signups a
LEFT JOIN Confirmations b USING (user_id)
GROUP BY a.user_id
ORDER BY confirmation_rate, a.user_id DESC;