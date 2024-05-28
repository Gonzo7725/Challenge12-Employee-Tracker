USE employeetracker_db;

SELECT * FROM department;

SELECT role.id as id, title, name as department, salary FROM role;
LEFT JOIN department On role.department_id=department.id;

SELECT employee.id as id, employee.first_name, employee.last_name, title, name as department, salary, CONCAT(managerTable.first_name, ' ', managerTable.last_name) as manager
FROM employee
LEFT JOIN role On employee.role_id = role.id
LEFT JOIN department ON role.department_id = department.id
LEFT JOIN employee as managerTable ON employee.manager_id = managerTable.id