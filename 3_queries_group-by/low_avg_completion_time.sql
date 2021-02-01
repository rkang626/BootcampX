SELECT s.name as student_name 
     , avg(a_sub.duration) as average_assignment_duration
     , avg(a.duration) as average_estimated_duration
  FROM students s 
  JOIN assignment_submissions a_sub 
       on s.id = a_sub.student_id 
  JOIN assignments a 
       on a_sub.assignment_id = a.id 
 WHERE a.end_date IS NULL
 GROUP BY 1
 HAVING avg(a_sub.duration) < avg(a.duration)
 ORDER BY 2 DESC