SELECT name, email, id, cohort_id
  FROM students
 WHERE phone is NULL
    OR email not ilike '%gmail.com'