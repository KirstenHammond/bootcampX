SELECT cohorts.name AS cohort_name, sum(completed_at - started_at) as total_duration
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohort_name
ORDER BY total_duration
LIMIT 10;