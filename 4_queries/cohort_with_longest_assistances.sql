select c.name
     , avg(ar.completed_at - ar.started_at) as average_assistance_time
  from assistance_requests ar 
  join students s 
       on ar.student_id = s.id 
  join cohorts c 
       on s.cohort_id = c.id 
 group by 1
 order by 2 desc
 limit 1