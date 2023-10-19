-- create titles table
CREATE TABLE titles (
	title_id VARCHAR (5) PRIMARY KEY,
	title VARCHAR (30));

-- create employees table
CREATE TABLE employees (
	emp_no VARCHAR (10) PRIMARY KEY,
	emp_title_id VARCHAR (5) references titles(title_id),
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (1),
	hire_date DATE);

-- create departments table
CREATE TABLE departments (
	dept_no VARCHAR (5) PRIMARY KEY,
	dept_name VARCHAR (30));

-- create dept_emp table
CREATE TABLE dept_emp (
	emp_no VARCHAR (10) references employees(emp_no),
	dept_no VARCHAR (5) references departments(dept_no));
	
-- create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR (5) references departments(dept_no),
	emp_no VARCHAR (10) references employees(emp_no));
	
-- create salaries table
CREATE TABLE salaries (
	emp_no VARCHAR (10) references employees(emp_no),
	salary INT);