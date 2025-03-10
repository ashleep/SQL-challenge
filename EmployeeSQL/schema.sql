DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no character varying(45) NOT NULL,
  dept_name character varying(45) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no character varying(20) NOT NULL,
  dept_no character varying(45) NOT NULL,
  from_date date DEFAULT ('now'::text)::date NOT NULL,
  to_date date DEFAULT ('now'::text)::date NOT NULL
);

CREATE TABLE dept_manager (
  dept_no character varying(20) NOT NULL,
  emp_no character varying(45) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL
);

CREATE TABLE employees (
  emp_no character varying(45) NOT NULL,
  birth_date character varying(45) NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender character varying(5) NOT NULL,
  hire_date character varying(45) NOT NULL
);

CREATE TABLE salaries (
  emp_no character varying(20) NOT NULL,
  salary integer NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL
);

CREATE TABLE titles (
  emp_no character varying(20) NOT NULL,
  title character varying(45) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL
);
