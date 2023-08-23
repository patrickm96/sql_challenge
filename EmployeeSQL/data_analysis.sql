/*Data import validation*/
select * from titles;
select * from employees;
select * from salaries;
select * from departments;
select * from dept_emp;
select * frm dept_manager;

/*List the employee number, last name, first name, sex, and salary of each employee.*/
select distinct
emp.emp_no "Employee #",
emp.last_name "Last Name",
emp.first_name "First Name",
emp.sex "Sex",
s.salary "Salary"
from employees emp
join salaries s
on s.emp_no = emp.emp_no
order by emp.emp_no
;
/*List the first name, last name, and hire date for the employees who were hired in 1986.*/
select distinct
emp.first_name "First Name",
emp.last_name "Last Name",
emp.hire_date "Hire Date" 
from employees emp
where to_char(emp.hire_date, 'YYYY') = '1986'
order by emp.hire_date asc, emp.first_name
;
/*List the manager of each department along with their department number, 
department name, employee number, last name, and first name.*/
select distinct
emp.emp_no "Department Manager Employee #",
emp.last_name "Department Manager Last Name",
emp.first_name "Department Manager First Name",
dept.dept_no "Department #",
dept.dept_name "Department Name"
from departments dept
join dept_manager dept_mgr
on dept_mgr.dept_no = dept.dept_no
join employees emp
on emp.emp_no = dept_mgr.emp_no
order by emp.emp_no, dept.dept_name
;
/*List the department number for each employee along with that employee’s employee number, 
last name, first name, and department name.*/
select distinct
emp.emp_no "Employee #",
emp.last_name "Last Name",
emp.first_name "First Name",
dept_emp.dept_no "Department #",
dept.dept_name "Deparment Name"
from employees emp
join dept_emp dept_emp
on dept_emp.emp_no = emp.emp_no
join departments dept
on dept.dept_no = dept_emp.dept_no
order by emp.emp_no
;
/*List first name, last name, and sex of each employee whose first name is Hercules 
and whose last name begins with the letter B.*/
select distinct
emp.emp_no "Employee #",
emp.first_name "First Name",
emp.last_name "Last Name",
emp.sex "Sex" 
from employees emp
where upper(emp.first_name) = 'HERCULES'
and upper(emp.last_name) like 'B%'
order by emp.first_name, emp.last_name
;
/*List each employee in the Sales department, including their employee number, 
last name, and first name.*/
select distinct
dept.dept_name "Department Name",
emp.emp_no "Employee #",
emp.last_name "Last Name",
emp.first_name "First Name"
from employees emp
join dept_emp dept_emp
on dept_emp.emp_no = emp.emp_no
join departments dept
on dept.dept_no = dept_emp.dept_no
where upper(dept.dept_name) = 'SALES'
order by dept.dept_name, emp.emp_no
;
/*List each employee in the Sales and Development departments, including their employee number, 
last name, first name, and department name.*/
select distinct
dept.dept_name "Department Name",
emp.emp_no "Employee #",
emp.last_name "Last Name",
emp.first_name "First Name"
from employees emp
join dept_emp dept_emp
on dept_emp.emp_no = emp.emp_no
join departments dept
on dept.dept_no = dept_emp.dept_no
where upper(dept.dept_name) in (
'SALES',
'DEVELOPMENT'
)
order by dept.dept_name, emp.emp_no
;
/*List the frequency counts, in descending order, of all the employee last names 
(that is, how many employees share each last name).*/
select distinct
emp.last_name "Last Name",
count(emp.emp_no) "Frequency Count"
from employees emp
group by emp.last_name
order by count(emp.emp_no) desc
;