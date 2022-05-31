-- SELECT * FROM TableA
-- INNER JOIN TableB
-- ON TableA.name = TableB.name

SELECT SUM(duration)
FROM assignment_submissions INNER JOIN students ON students.id = student_id
WHERE name = 'Ibrahim Schimmel';