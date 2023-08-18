SELECT manager.employee_id, manager.name, COUNT(worker.reports_to) as reports_count, ROUND(AVG(worker.age), 0) as average_age
FROM Employees manager
INNER JOIN Employees worker
ON manager.employee_id = worker.reports_to
GROUP BY manager.employee_id
ORDER BY manager.employee_id
