SELECT t.name AS teacher, c.name AS cohort, COUNT(*) AS total_assistances
FROM assistance_requests ar
JOIN teachers t ON ar.teacher_id = t.id
JOIN students s ON ar.student_id = s.id
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name;