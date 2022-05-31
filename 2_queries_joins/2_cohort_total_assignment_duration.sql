-- SELECT sum(assignment_submissions.duration) 
-- FROM assignment_submissions
-- INNER JOIN students ON assignment_submissions.student_id = students.id
-- INNER JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE cohort.name = 'FEB12';


SELECT sum(assignment_submissions.duration)
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';