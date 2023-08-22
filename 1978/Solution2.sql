SELECT a.employee_id
from Employees a
LEFT OUTER JOIN Employees b
ON a.manager_id = b.employee_id
WHERE a.manager_id IS NOT NULL
AND b.employee_id IS NULL
AND a.salary < 30000
ORDER BY a.employee_id ASC
