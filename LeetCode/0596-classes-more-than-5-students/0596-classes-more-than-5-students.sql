WITH temp AS (
    SELECT class, COUNT(class) AS num
    FROM Courses
    GROUP BY class
)

SELECT class
FROM temp
WHERE num>=5