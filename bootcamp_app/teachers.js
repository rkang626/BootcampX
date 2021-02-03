const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv.slice(2);
const cohort = input[0];

pool.query(`
SELECT distinct t.name
     , c.name AS cohort
  FROM assistance_requests ar 
  JOIN teachers t 
       ON ar.teacher_id = t.id
  JOIN students s 
       ON ar.student_id = s.id 
  JOIN cohorts c
       ON s.cohort_id = c.id 
 WHERE c.name = '${cohort}'
 ORDER BY 1;
`)
.then(res => {
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.name}`);
  })
}).catch(err => console.error('query error', err.stack));