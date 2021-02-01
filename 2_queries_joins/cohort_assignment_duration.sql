SELECT sum(a.duration) as total_duration
  FROM assignment_submissions a 
  JOIN students s 
    ON a.student_id = s.id
  JOIN cohorts c 
    ON s.cohort_id = c.id
 WHERE c.name = 'FEB12';