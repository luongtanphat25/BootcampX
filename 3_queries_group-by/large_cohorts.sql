SELECT cohorts.name as corhort_name, count(*) AS student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY corhort_name
HAVING count(*) >=18
ORDER BY count(*);