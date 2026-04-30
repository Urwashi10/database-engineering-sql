-- Trigger for salary update

CREATE TRIGGER trg_salary_update
ON salaries
AFTER UPDATE
AS
BEGIN
    INSERT INTO employee_audit (employee_id, old_salary, new_salary, action_type)
    SELECT 
        d.employee_id,
        d.base_salary,
        i.base_salary,
        'UPDATE'
    FROM DELETED d
    JOIN INSERTED i ON d.employee_id = i.employee_id;
END;
