-- DATA ANALYSIS --
-- 1. Employee Details --
-- Employee Number, Last Name, First Name, Sex and Salary

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary_$ 
FROM Employees
INNER JOIN salaries ON
Employees.emp_no = Salaries.emp_no);

-- 2. Employees who were hired in 1986
-- First and Last Names
SELECT first_name, last_name, hire_date
FROM Employees WHERE hire_date LIKE '%1986';

-- 3. Listing Managers of Each Department
SELECT departments.dept_no, departments.dept_name, department_manager.emp_no,
Employees.last_name, Employees.first_name
FROM departments
INNER JOIN department_manager ON
departments.dept_no=department_manager.dept_no
INNER JOIN Employees ON
department_manager.emp_no = Employees.emp_no;

-- 4. Querying Employees Department
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN department_employees ON
Employees.emp_no = department_employees.emp_no
INNER JOIN departments ON
department_employees.dept_no = departments.dept_no; 

-- 5. Listing people who's names begin with Hercules and Last name begins with B
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. Employees in the Sales Department --
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Department_employees ON
Employees.emp_no = Department_employees.emp_no
INNER JOIN Departments ON
Department_employees.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales';

-- 7. Employees in Sales and Development Department
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Department_employees ON
Employees.emp_no = Department_employees.emp_no
INNER JOIN Departments ON
Department_employees.dept_no = Departments.dept_no
WHERE Departments.dept_name IN ('Sales', 'Development');

-- 8. Frequency count of employees Last Names
SELECT last_name, COUNT(*) AS name_count
FROM Employees GROUP BY last_name
ORDER BY name_count DESC;