SELECT * FROM theft_report.employees;

#9. Flag Employees Who Supervise and Are Associated with Theft (Direct or Indirect)
SELECT s.EmployeeID AS SupervisorID, s.FirstName AS SupervisorFirstName, s.LastName AS SupervisorLastName, 
COUNT(e.EmployeeID) AS EmployeesUnderSupervision, 
SUM(CASE WHEN e.TheftFlag = 1 THEN 1 ELSE 0 END) AS TheftCasesUnderSupervision,
SUM(CASE WHEN e.TheftFlag = 1 THEN e.AmountStolen ELSE 0 END) AS TotalTheftUnderSupervision
FROM Employees s
LEFT JOIN Employees e ON s.EmployeeID = e.SupervisorID
GROUP BY s.EmployeeID, s.FirstName, s.LastName
HAVING TotalTheftUnderSupervision > 0
ORDER BY TotalTheftUnderSupervision DESC;

