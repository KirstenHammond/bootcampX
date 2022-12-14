SELECT cohorts.name AS cohort_name, avg(completed_at - started_at) as avg_asst_time
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohort_name
ORDER BY avg_asst_time
LIMIT 10;