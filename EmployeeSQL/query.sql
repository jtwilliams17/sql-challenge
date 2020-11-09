-- SQL Query #1
select employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex,
	salaries.salary
	from employees
Inner Join salaries ON employees.emp_no = salaries.emp_no;

-- SQL Query #2
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1986-01-01'
ORDER BY hire_date;

-- SQL Query #3
select dman.dept_no, 
	dept.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
	from employees as e
Inner Join dept_manager as dman ON e.emp_no = dman.emp_no
Inner Join departments as dept on dman.dept_no = dept.dept_no;

-- SQL Query #4
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	dept.dept_name
	from employees as e
Inner Join dept_emp as demp ON e.emp_no = demp.emp_no
Inner Join departments as dept on demp.dept_no = dept.dept_no;

-- SQL Query #5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- SQL Query #6
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	dept.dept_name
	from employees as e
Inner Join dept_emp as demp ON e.emp_no = demp.emp_no
Inner Join departments as dept on demp.dept_no = dept.dept_no
WHERE dept_name = 'Sales';

-- SQL Query #7
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	dept.dept_name
	from employees as e
Inner Join dept_emp as demp ON e.emp_no = demp.emp_no
Inner Join departments as dept on demp.dept_no = dept.dept_no
WHERE dept_name IN ('Sales', 'Development');

-- SQL Query #8
SELECT last_name, COUNT(*) FROM employees
GROUP BY last_name
ORDER BY count desc;