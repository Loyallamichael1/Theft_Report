SELECT * FROM theft_report.employees;

#1. List All Employees Involved in Theft
SELECT EmployeeID, FirstName, LastName, Position, Department, AmountStolen
FROM Employees
WHERE TheftFlag = 1
ORDER BY AmountStolen DESC;