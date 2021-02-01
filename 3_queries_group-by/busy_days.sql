SELECT day
     , count(*) AS total_assignments
  FROM assignments
 GROUP BY 1
HAVING count(*) >= 10
 ORDER BY day