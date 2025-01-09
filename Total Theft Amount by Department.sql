SELECT * FROM theft_report.employees;

#2. Total Theft Amount by Department
SELECT Department, SUM(AmountStolen) AS TotalTheft, COUNT(*) AS TheftCases
FROM Employees
WHERE TheftFlag = 1
GROUP BY Department
ORDER BY TotalTheft DESC;