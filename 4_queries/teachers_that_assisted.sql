select distinct t.name as teacher
     , c.name as cohort
  from assistance_requests ar 
  join teachers t 
       on ar.teacher_id = t.id
  join students s 
       on ar.student_id = s.id 
  join cohorts c
       on s.cohort_id = c.id 
 where c.name = 'JUL02'
 order by 1