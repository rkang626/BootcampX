SELECT c.name as cohort_name 
     , count(*) as student_count
  FROM cohorts c
  JOIN students s 
       ON c.id = s.cohort_id
 GROUP BY 1
HAVING count(*) >= 18
 ORDER BY student_count desc