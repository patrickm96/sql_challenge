# sql_challenge
Module 9 challenge

The following resources were referenced to complete this challenge:
1. Add check constraint while creating table - https://www.w3schools.com/sql/sql_check.asp
2. Convert date to year - https://database.guide/2-functions-to-get-the-year-from-a-date-in-oracle/
3. Postgres data types - https://www.postgresql.org/docs/current/datatype.html
4. Oracle sysdate Postgres equivalent - https://stackoverflow.com/questions/16960432/what-is-postgresql-equivalent-of-sysdate-from-oracle
5. Postgres foreign key constraint - https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-foreign-key/
6. Composite key - Instructor Eli Rosenberg covered this during class

## Instructions
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

### Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..

### Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

### Data Analysis
List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
