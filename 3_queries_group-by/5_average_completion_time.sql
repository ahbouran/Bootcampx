-- SELECT name as student, AVG(assignment_submissions.duration) as average_time
-- FROM students
-- JOIN assignment_submissions ON students.id = student_id
-- GROUP BY student WHERE end_date IS NOT NULL
-- ORDER BY average_time DESC;


SELECT students.name as student, avg(assignment_submissions.duration) as average_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_duration DESC;