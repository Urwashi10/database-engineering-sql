-- Calculate total salary

CREATE PROCEDURE calculate_total_salary
    @emp_id INT
AS
BEGIN
    SELECT 
        e.name,
        s.base_salary,
        s.bonus,
        (s.base_salary + s.bonus) AS total_salary
    FROM employees e
    JOIN salaries s ON e.id = s.employee_id
    WHERE e.id = @emp_id;
END;
