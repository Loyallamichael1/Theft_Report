SELECT * FROM theft_report.employees;

#6. Percentage of Employees Involved in Theft by Department
SELECT Department, 
COUNT(CASE WHEN TheftFlag = 1 THEN 1 END) AS TheftCases, 
COUNT(*) AS TotalEmployees,
ROUND((COUNT(CASE WHEN TheftFlag = 1 THEN 1 END) * 100.0) / COUNT(*), 2) AS TheftPercentage
FROM Employees
GROUP BY Department
ORDER BY TheftPercentage DESC;