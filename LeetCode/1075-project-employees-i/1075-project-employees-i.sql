SELECT project_id, ROUND(AVG(experience_years),2) AS average_years
FROM Project a LEFT JOIN Employee b ON a.employee_id=b.employee_id
GROUP BY project_id