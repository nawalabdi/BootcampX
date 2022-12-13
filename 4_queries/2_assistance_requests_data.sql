SELECT teachers.name, students.name, assignments.name, (completed_at - started_at) as duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students on student_id = students.id
JOIN assignments on assignment_id = assignments.id
ORDER BY duration