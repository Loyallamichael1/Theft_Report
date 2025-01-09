SELECT * FROM theft_report.employees;
#4. Identify Employees with Significant Theft (e.g., Over $5,000)
SELECT EmployeeID, FirstName, LastName, Department, Position, AmountStolen
FROM Employees
WHERE TheftFlag = 1 AND AmountStolen > 5000
ORDER BY AmountStolen DESC;