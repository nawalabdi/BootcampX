SELECT id, day, chapter, name count(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY id
ORDER BY total_requests DESC;