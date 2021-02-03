const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv.slice(2);
const cohort = input[0];
const limit = input[1];

pool.query(`
SELECT students.id, students.name as student, students.cohort_id, cohorts.name as cohort
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name ilike '${cohort}%'
LIMIT ${limit};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.student} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })
}).catch(err => console.error('query error', err.stack));