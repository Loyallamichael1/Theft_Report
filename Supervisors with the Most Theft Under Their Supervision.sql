SELECT * FROM theft_report.employees;
#3. Supervisors with the Most Theft Under Their Supervision
SELECT e.SupervisorID, s.FirstName AS SupervisorFirstName, s.LastName AS SupervisorLastName, 
COUNT(*) AS TheftCount, SUM(e.AmountStolen) AS TotalTheft
FROM Employees e
JOIN Employees s ON e.SupervisorID = s.EmployeeID
WHERE e.TheftFlag = 1
GROUP BY e.SupervisorID, s.FirstName, s.LastName
ORDER BY TotalTheft DESC, TheftCount DESC;