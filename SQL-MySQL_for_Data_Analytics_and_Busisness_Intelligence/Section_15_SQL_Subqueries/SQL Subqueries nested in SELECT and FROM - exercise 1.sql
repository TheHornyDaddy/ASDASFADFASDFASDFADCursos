/*
Starting your code with “DROP TABLE”, create a table called
“emp_manager” (emp_no – integer of 11, not null; dept_no –
CHAR of 4, null; manager_no – integer of 11, not null). 
*/
USE employees;

-- Create emp_manager:
DROP TABLE IF EXISTS emp_manager;
CREATE TABLE emp_manager(
	emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);