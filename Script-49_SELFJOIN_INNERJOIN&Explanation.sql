SELECT e.first_name ||' '|| e.last_name AS employee, 
m.first_name ||' '|| m.last_name AS manager
FROM employee AS e 
INNER JOIN employee AS m ON m.employee_id = e.manager_id
ORDER BY manager DESC ;

-- This means that the "employee_id" of the "manager" matches "manager_id" of the "employee".