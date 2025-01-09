SELECT * FROM theft_report.employees;

#7. Total Theft Amount by Position (Employee vs. Supervisor)
SELECT Position, COUNT(*) AS TheftCases, SUM(AmountStolen) AS TotalTheft
FROM Employees
WHERE TheftFlag = 1
GROUP BY Position
ORDER BY TotalTheft DESC;