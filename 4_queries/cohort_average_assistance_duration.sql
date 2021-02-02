with cohort_total_duration as (

select c.name
     , sum(ar.completed_at - ar.started_at) as total_duration
  from assistance_requests ar 
  join students s 
       on ar.student_id = s.id 
  join cohorts c 
       on s.cohort_id = c.id 
 group by 1
 
)

select avg(total_duration) as average_total_duration
  from cohort_total_duration