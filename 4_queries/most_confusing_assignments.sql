select a.id
     , a.name 
     , a.day
     , a.chapter 
     , count(*) as total_requests
  from assistance_requests ar 
  join assignments a 
       on ar.assignment_id = a.id 
 group by 1, 2, 3, 4
 order by 5 desc