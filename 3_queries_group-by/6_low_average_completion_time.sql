-- SELECT students.name as student, avg(assignment_submissions.duration) as student_average_duration, avg(assignments.duration) as typical_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignments.duration = assignment_submissions.duration
-- GROUP BY student
-- ORDER BY student_average_duration ASC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;