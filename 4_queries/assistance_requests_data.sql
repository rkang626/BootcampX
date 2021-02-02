select t.name as teacher
     , s.name as student
     , a.name as assignment
     , ar.completed_at - ar.started_at as duration
  from assistance_requests ar 
  join teachers t 
       on ar.teacher_id = t.id
  join students s 
       on ar.student_id = s.id 
  join assignments a 
       on ar.assignment_id = a.id 
 order by 4