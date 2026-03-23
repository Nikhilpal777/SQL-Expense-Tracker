DELIMITER //

CREATE PROCEDURE AddExpense(
    IN p_amount DECIMAL(10,2),
    IN p_category VARCHAR(50),
    IN p_date DATE
)
BEGIN
    INSERT INTO expenses (amount, category, expense_date)
    VALUES (p_amount, p_category, p_date);
END //

DELIMITER ;