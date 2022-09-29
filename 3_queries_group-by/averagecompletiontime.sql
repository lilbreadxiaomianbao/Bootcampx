SELECT students.name as student, ave(assignment_submissions.duration) as average_assignment_duration 
FROM students 
JOIN assignment_submissions ON student_id = students.id 
WHERE end_date is NULL
GROUP BY student 
ORDER BY average_assignment_duration DESC;