select s.name as student
     , count(*) as assistance_requests
  from assistance_requests ar 
  join students s
       on ar.student_id = s.id
 where s.name = 'Elliot Dickinson'
 group by 1