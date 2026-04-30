-- Tax calculation function

CREATE FUNCTION calculate_tax (@salary INT)
RETURNS INT
AS
BEGIN
    RETURN @salary * 0.1;
END;
