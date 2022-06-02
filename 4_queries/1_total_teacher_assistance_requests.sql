SELECT count(assistance_requests.*) AS total_assistances, teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
GROUP BY name
HAVING name = 'Waylon Boehm';