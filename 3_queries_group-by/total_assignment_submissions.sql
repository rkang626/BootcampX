SELECT c.name as cohort_name 
     , count(*) as total_submissions 
  FROM assignment_submissions a
  JOIN students s 
       ON a.student_id = s.id 
  JOIN cohorts c 
       ON s.cohort_id = c.id 
 GROUP BY 1
 ORDER BY 2 DESC