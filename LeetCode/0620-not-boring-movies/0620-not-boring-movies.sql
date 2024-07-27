SELECT *
FROM Cinema
WHERE MOD(id,2) AND  description !='boring'
ORDER BY rating DESC;