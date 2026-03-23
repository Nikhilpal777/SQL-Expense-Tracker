DELIMITER //

CREATE TRIGGER after_expense_insert
AFTER INSERT
ON expenses
FOR EACH ROW
BEGIN
    INSERT INTO expense_log (message)
    VALUES (CONCAT('Added: ', NEW.amount, ' - ', NEW.category));
END //

DELIMITER ;