SELECT
	EmployeeName
FROM
	Employees
EXCEPT
SELECT
	e.EmployeeName
FROM
	Sales AS s
		JOIN
	Employees AS e
		ON s.EmployeeID = e.EmployeeID
;
