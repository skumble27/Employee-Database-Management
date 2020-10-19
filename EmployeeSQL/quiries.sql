-- DATA ANALYSIS --
-- 1. Employee Details --

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary 
FROM Employees
INNER JOIN salaries ON
Employees.emp_no = Salaries.emp_no;

-- Copy the Output to Excel --
COPY (SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary 
FROM Employees
INNER JOIN salaries ON
Employees.emp_no = Salaries.emp_no) TO 'E:\My Documents\Professional Development\Monash University Data Analytics Boot Camp\GitHubRepo\sql-challenge\EmployeeSQL\Output Queries\employee_salary.csv' DELIMITER ',' CSV HEADER;

-- 2. Employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees WHERE hire_date LIKE '%%/%%/1986';

-- Export as CSV File --
COPY(SELECT first_name, last_name, hire_date
FROM Employees WHERE hire_date LIKE '%%/%%/1986') TO 'E:\My Documents\Professional Development\Monash University Data Analytics Boot Camp\GitHubRepo\sql-challenge\EmployeeSQL\Output Queries\1986_hire_date.csv' DELIMITER ',' CSV HEADER;

-- 3. Listing Managers of Each Department
SELECT departments.dept_no, departments.dept_name, department_manager.emp_no,
Employees.last_name, Employees.first_name
FROM departments
INNER JOIN department_manager ON
departments.dept_no=department_manager.dept_no
INNER JOIN Employees ON
department_manager.emp_no = Employees.emp_no;