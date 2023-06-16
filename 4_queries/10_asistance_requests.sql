SELECT a.id, a.name, a.day, a.chapter, COUNT(*) AS total_requests
FROM assignments a
JOIN assistance_requests ar ON a.id = ar.assignment_id
GROUP BY a.id, a.name, a.day, a.chapter
ORDER BY total_requests DESC;