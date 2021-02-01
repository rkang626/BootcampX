SELECT day
     , count(*) AS total_assignments
  FROM assignments
 GROUP BY 1
 ORDER BY day