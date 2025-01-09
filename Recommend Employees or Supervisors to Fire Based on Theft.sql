SELECT * FROM theft_report.employees;

#10. Recommend Employees or Supervisors to Fire Based on Theft
SELECT EmployeeID, FirstName, LastName, Position, Department, AmountStolen
FROM Employees
WHERE TheftFlag = 1 AND AmountStolen > 1000
ORDER BY AmountStolen DESC;

#• Who is stealing and how much?
#• Which departments and supervisors have the most theft?
#• Are supervisors themselves stealing?
#• Which employees are high-risk for termination?