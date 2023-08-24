/*Create tables*/
--Create titles table
create table titles (
	titles_id serial,
	title_id varchar(8) PRIMARY KEY,
	title varchar(64) UNIQUE
);

--drop table titles;
--select * from titles;

--Create employee table
create table employees (
	employees_id serial,
	emp_no int Primary Key NOT NULL,
	emp_title_id varchar(8) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(32) NOT NULL,
	last_name varchar(32) NOT NULL,
	sex varchar(1) NOT NULL CHECK (sex in ('M','F')),  --Check sex equals M or F
	hire_date date NOT NULL CHECK (hire_date <= CURRENT_DATE), --Check hire date is not in future
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--drop table employees;
--select * from employees;

--Create salaries table
create table salaries (
	salaries_id serial,
	emp_no int Primary Key,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--drop table salaries;
--select * from salaries;

--Create departments table
create table departments (
	departments_id serial,
	dept_no varchar(8) Primary Key,
	dept_name varchar(64) NOT NULL
);

--drop table departments;
--select * from departments;

--Create dept_emp table
create table dept_emp (
	dept_emp_id serial,
	emp_no int,
	dept_no varchar(8) NOT NULL,
	PRIMARY KEY (emp_no, dept_no), ----Composite key since some employees are part of multiple departments
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--drop table dept_emp;
--select * from dept_emp;

--Create dept_manager table
create table dept_manager (
	dept_manager_id serial,
	dept_no varchar(8) NOT NULL,
	emp_no int NOT NULL,
	PRIMARY KEY (dept_no, emp_no), --Composite key since an employee can manage multiple departments
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--drop table dept_manager;
--select * from dept_manager;
