SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
from employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT * 
FROM employees
WHERE hire_date LIKE '1986-__-__';

