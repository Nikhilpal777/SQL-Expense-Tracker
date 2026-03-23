SELECT *
FROM expenses
WHERE category = 'Food';

SELECT *
FROM expenses
WHERE amount > 200;

SELECT *
FROM expenses
WHERE amount > 100 AND category = 'Food';

SELECT *
FROM expenses
WHERE expense_date = '2026-03-21';

SELECT *
FROM expenses
ORDER BY amount ASC;

SELECT *
FROM expenses
ORDER BY amount DESC;

SELECT *
FROM expenses
ORDER BY expense_date ASC;

SELECT *
FROM expenses
WHERE category = 'Food'
ORDER BY amount DESC;

SELECT SUM(amount) AS total_spent
FROM expenses;

SELECT ROUND(AVG(amount),2) AS avg_expense
FROM expenses;

SELECT MAX(amount) AS highest_expense
FROM expenses;

SELECT MIN(amount) AS lowest_expense
FROM expenses;

SELECT COUNT(*) AS total_entries
FROM expenses;

SELECT category ,SUM(amount) total_spent
FROM expenses
GROUP BY category;

SELECT category ,SUM(amount) total_spent
FROM expenses
GROUP BY category
ORDER BY total_spent DESC;

SELECT category ,SUM(amount) total_spent
FROM expenses
GROUP BY category
HAVING total_spent > 300
ORDER BY total_spent DESC;

SELECT amount,
CASE
	WHEN amount >= 300 THEN 'High'
    WHEN amount >= 200 and amount < 300 THEN 'Medium'
    ELSE 'Low'
    END AS expense_type
FROM expenses;

SELECT category,amount,
CASE
	WHEN category = 'Food' THEN 'Essential'
    ELSE 'Not-Essential'
END AS expense_nature
FROM expenses;

SELECT category,amount,
CASE
	WHEN amount >=300 THEN 'High spending'
    ELSE 'Low spending'
END AS spending_nature
FROM expenses;

SELECT *
FROM expenses
WHERE amount > (
SELECT AVG(amount)
FROM expenses);

SELECT MAX(amount)
FROM expenses
WHERE amount < (
SELECT MAX(amount)
FROM expenses)
LIMIT 1;

SELECT DISTINCT amount
FROM expenses
ORDER BY amount DESC
LIMIT 1 OFFSET 2;	