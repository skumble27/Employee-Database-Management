-- Creating the relevant Tables Required for Database Engineering --

CREATE TABLE Departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
	

);

SELECT * FROM Departments;

CREATE TABLE Titles (
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id)

);

SELECT * FROM Titles;

CREATE TABLE Employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM Employees;

CREATE TABLE Department_Employees(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)

);

SELECT * FROM Department_Employees;

CREATE TABLE Department_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Department_Manager;

CREATE TABLE Salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
	 	
);

SELECT * FROM Salaries;