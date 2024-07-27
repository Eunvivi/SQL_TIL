SELECT 
a.student_id, a.student_name, c.subject_name, COUNT(c.subject_name)
FROM Students a
JOIN Examinations b ON a.student_id =b.student_id 
JOIN Subjects c ON b.subject_name= c.subject_name
GROUP BY c.subject_name, student_id
