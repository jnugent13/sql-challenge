SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.gender,
salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

SELECT * 
FROM employees
WHERE hire_date LIKE '1986-__-__';

SELECT dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name,
dept_manager.from_date,
dept_manager.to_date
FROM ((dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no)
	  INNER JOIN employees ON
	  dept_manager.emp_no = employees.emp_no);

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM ((dept_emp
INNER JOIN employees ON 
	   dept_emp.emp_no = employees.emp_no)
	  INNER JOIN departments ON
	  dept_emp.dept_no = departments.dept_no);

SELECT * FROM employees
WHERE first_name = 'Hercules' AND
last_name LIKE 'B%';

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees, departments
WHERE departments.dept_name = 'Sales' AND
emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN (
		(SELECT dept_no
		 FROM departments
		 WHERE dept_name = 'Sales')
	)
);

SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees, departments
WHERE departments.dept_name IN ('Sales', 'Development') AND
emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN (
		(SELECT dept_no
		 FROM departments
		 WHERE dept_name IN ('Sales','Development'))
	)
);

