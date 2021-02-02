select t.name as teacher
     , count(*) as assistance_requests
  from assistance_requests ar 
  join teachers t 
       on ar.teacher_id = t.id
 where t.name = 'Waylon Boehm'
 group by 1