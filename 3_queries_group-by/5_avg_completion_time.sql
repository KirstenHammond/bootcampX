SELECT students.name AS student, AVG(assignment_submissions.duration) AS avg_assg_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student 
ORDER BY avg_assg_duration DESC;