SELECT  students.name AS student, 
        AVG(assignment_submissions.duration) AS avg_asg_duration,
        AVG(assignments.duration) AS avg_est_duration
FROM students 
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY avg_asg_duration;

