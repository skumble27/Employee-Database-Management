# sql-challenge - Pewlett Hackard 

**Background**

At the behest of the Senior Manager of Pewlett Hackard, Data Analytics were undertaken based on employee records from the 1980's to the end of the 1990's. Based on the six CSV files that were provided, a consolidated Database was developed and engineered in order to subsequently undertake the relevant queries and analyses as required by the Senior Management. In order to achieve this, an Entity Relationship Diagram was developed as a framework in which to reconcile the disparate data sets. An outline has been provided below:

![ERD Diagram](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Database_Structuring.png)  

As seen in the above diagram, the relevant primary and foreign keys were assigned to the relevant tables in order to facilitate the Data Analytics Process. 



**First Query**

List the following details of each employee: employee number, last name, first name, sex, and salary

![Output Query1](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%201%20-%20Employee%20Salary.png)



**Second Query**

List first name, last name, and hire date for employees who were hired in 1986.

![Second Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%202%20-%20Employee%20hiredate%20from%201986.png)

**Third Query** 

List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![Third Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%203%20-%20Managers.png)



**Fourth Query** 

List the department of each employee with the following information: employee number, last name, first name, and department name.

![Fourth Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%204%20-%20Employee%20department.png)



**Fifth Query**

List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![Fifth Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%205%20-%20firstname_hercules_last_name_with_B.png)





**Sixth Query**

List all employees in the Sales department, including their employee number, last name, first name, and department name.

![Sixth Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%206%20-%20Sales%20department%20employees.png)



**Seventh Query**

List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Seventh Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%207%20-%20Employees%20in%20Sales%20and%20Developmeny.png)



**Eighth Query**

In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![Eighth Query](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/Query%208%20-%20lastname_count.png)



#### Further Data Analytics (Bonus)

The Database was further queried using the SQLAlchemy module in Python in order to retrieve the datasets and convert into a Pandas Dataframe. Once consolidated, the Seaborn and Matplotlib modules were subsequently utilised to visualise the dataset to gain an insight into the most common Salary ranges and the average Salary by Title, which have been provided below:



1. Salary Ranges for Employees

![Salary Ranges](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/salary_range_count.png)

2. Average Salary by Title

![Average Salary by Title](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/average_salary_by_title.png)



At the request of the Senior Manager, the employee Identification was further queried in the database which culminated in the following details that have been provided below.

![April Fool](https://raw.githubusercontent.com/skumble27/sql-challenge/main/EmployeeSQL/Images/April_fool.png)