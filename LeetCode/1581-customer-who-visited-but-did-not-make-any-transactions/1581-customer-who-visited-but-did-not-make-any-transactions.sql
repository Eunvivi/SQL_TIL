SELECT *
FROM Visits a LEFT JOIN Transactions b ON a.visit_id= b.visit_id
