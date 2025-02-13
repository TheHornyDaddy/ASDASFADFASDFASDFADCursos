USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;
-- use small letters to type the in and out keywords while creating a procedure.
-- Don't use capital letters.

DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT
	AVG(s.salary)
INTO p_avg_salary FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
END $$
DELIMITER ;