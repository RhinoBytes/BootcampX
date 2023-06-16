SELECT day, COUNT(*) as total_assignments
FROM assignments
GROUP BY DAY
ORDER BY DAY;
