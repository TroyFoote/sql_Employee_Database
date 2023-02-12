-- Question 1
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- Question 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE (hire_date BETWEEN '1986-01-01' AND '1986-12-31');

-- Question 3
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT departments.dept_name, dept_manager.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_manager
JOIN employees
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no;

-- Question 4
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT departments.dept_name, dept_emp.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no;

-- QUESTION 5
-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B_%'
ORDER BY last_name;

-- QUESTION 6
-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT departments.dept_name, dept_emp.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

-- QUESTION 7
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT departments.dept_name, dept_emp.dept_no, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- QUESTION 8
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "total"
FROM employees
GROUP BY last_name
ORDER BY total DESC;








































