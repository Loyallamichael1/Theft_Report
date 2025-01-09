SELECT * FROM theft_report.employees;

#8. Identify Supervisors Who Stole Money Themselves
SELECT EmployeeID, FirstName, LastName, Position, Department, AmountStolen
FROM Employees
WHERE Position = 'Supervisor' AND TheftFlag = 1
ORDER BY AmountStolen DESC;

