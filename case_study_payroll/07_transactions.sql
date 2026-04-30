-- Safe salary update

BEGIN TRANSACTION;

UPDATE salaries
SET base_salary = base_salary + 5000
WHERE employee_id = 1;

COMMIT;
