--List the following details of each employee: employee number, 
--last name, first name, gender, and salary.
SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", e.gender as "Gender", s.salary as "Salary"
from employees as e
	join salaries as s
	on (e.emp_no = s.emp_no);
	
	

--List employees who were hired in 1986.
SELECT e.last_name as "Last Name", e.first_name as "First Name", hire_date  as "Hire Date"
from employees as e
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'
order by hire_date asc;



--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
SELECT d.dept_no as "Department Number", d.dept_name as "Department Name", dman.emp_no as "Manager Employee Number", 
e.last_name as "Last Name", e.first_name as "First Name", dman.from_date as "Start Date", dman.to_date as "End Date"
FROM employees as e
	JOIN dept_manager as dman
	on (e.emp_no = dman.emp_no)
		JOIN departments as d
		on (d.dept_no = dman.dept_no);



--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
FROM employees as e
	JOIN dept_emp as dm
	on (e.emp_no = dm.emp_no)
		JOIN departments as d
		on (d.dept_no = dm.dept_no);


--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT e.last_name as "Last Name", e.first_name as "First Name"
from employees as e
where e.first_name Like 'Hercules' and e.last_name LIKE 'B%';



--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
FROM employees as e
	JOIN dept_emp as dm
	on (e.emp_no = dm.emp_no)
		JOIN departments as d
		on (d.dept_no = dm.dept_no)
where d.dept_name Like 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", e.first_name as "First Name", d.dept_name as "Department Name"
FROM employees as e
	JOIN dept_emp as dm
	on (e.emp_no = dm.emp_no)
		JOIN departments as d
		on (d.dept_no = dm.dept_no)
where d.dept_name Like 'Sales' or d.dept_name Like 'Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name as "Last Name", count(e.emp_no) as "Count of People"
from employees as e
group by e.last_name
order by count(e.emp_no) Desc;


