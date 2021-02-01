SELECT s.name as student_name 
     , avg(a.duration) as average_duration 
  FROM assignment_submissions a
  JOIN students s 
       ON a.student_id = s.id 
 WHERE a.end_date IS NULL
 GROUP BY 1
 ORDER BY 2 DESC