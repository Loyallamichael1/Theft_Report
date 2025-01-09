SELECT * FROM theft_report.employees;
#5. Employees with Long Tenure Involved in Theft
SELECT EmployeeID, FirstName, LastName, Position, Department, HireDate, AmountStolen
FROM Employees
WHERE TheftFlag = 1
ORDER BY HireDate ASC;