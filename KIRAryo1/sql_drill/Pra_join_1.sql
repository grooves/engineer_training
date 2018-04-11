SELECT
	Employees.EmployeeName
,	Salary.PayDate
,	Salary.Amount
FROM
	Salary
		JOIN
	Employees
		ON Salary.EmployeeID = Employees.EmployeeID
ORDER BY
	Salary.EmployeeID
;
