--List the following details of each employee: emplyee number, last name. first name, sex, and salary
SELECT
e.emp_no,
e.last_name,
e.first_name,
e.sex,
e.hire_date,
s.salary
From
employees e
Join salaries s
ON e.emp_no = s.emp_no;
--list first name, last name and hire date employees who were hired in 1986
SELECT
first_name,
last_name,
hire_date
From
employees 
WHERE hire_date BETWEEN '01/01/1986' AND'12/31/1986';
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT
d.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
From
departments d
Join dept_manager dm
ON d.dept_no = dm.dept_no
Join employees e
on dm.emp_no = e.emp_no;
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
From
dept_emp de
Join employees e
ON de.emp_no = e.emp_no
Join departments d
on de.dept_no = d.dept_no;
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
first_name,
last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM dept_emp de
JOIN employees e
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM dept_emp de
JOIN employees e
ON de.emp_no = e.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development';
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
