SELECT contest_id, ROUND(COUNT(DISTINCT u.user_id)*100/(SELECT COUNT(user_id) FROM Users), 2) AS percentage 
FROM Users u LEFT JOIN Register r ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;