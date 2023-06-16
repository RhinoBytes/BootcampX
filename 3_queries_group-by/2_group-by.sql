SELECT day, COUNT(*) as total_assignments
FROM assignments
GROUP BY DAY
HAVING COUNT(*) >= 10
ORDER BY DAY;
