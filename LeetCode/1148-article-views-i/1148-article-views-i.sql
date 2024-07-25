SELECT DISTINCT author_id AS id
FROM Views
GROUP BY author_id
HAVING COUNT(author_id) >= 1
ORDER BY id;