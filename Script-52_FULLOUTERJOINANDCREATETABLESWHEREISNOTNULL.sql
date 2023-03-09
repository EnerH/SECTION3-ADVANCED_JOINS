CREATE TABLE departments(
department_id serial PRIMARY KEY,
department_name VARCHAR (255) NOT NULL);

INSERT INTO departments (department_name)
VALUES
	('Sales'),
	('Marketing'),
	('HR'),
	('IT'),
	('Production');

CREATE TABLE employees_copy(
employee_id serial PRIMARY KEY,
employee_name VARCHAR (255),
department_id INTEGER);

INSERT INTO employees_copy (
	employee_name,
	department_id)
VALUES
	('Bette Nicholson', 1),
	('Christian Gable', 1),
	('Joe Swank', 2),
	('Fred Costner', 3),
	('Sandra Kilmer', 4),
	('Julia Mcqueen', NULL);
	
SELECT employees_copy.employee_name, departments.department_name
FROM employees_copy 
FULL OUTER JOIN departments ON (employees_copy.department_id = departments.department_id)
WHERE employees_copy.employee_name IS NOT NULL AND departments.department_name IS NOT NULL;