SELECT students.name AS name, count(assistance_requests.*) AS total_assistances
FROM students
JOIN assistance_requests ON student_id = students.id 
GROUP BY name
HAVING name = 'Elliot Dickinson';