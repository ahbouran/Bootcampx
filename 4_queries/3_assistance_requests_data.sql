-- SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
-- FROM teachers
-- JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
-- JOIN students ON assistance_requests.student_id = students.id
-- JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- JOIN assignments ON assignment_submissions.assignment_id = assignments.id
-- ORDER BY duration ASC;


SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;