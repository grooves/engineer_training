SELECT
	EmployeeID
,	EmployeeName
FROM
	Employees
WHERE
	EmployeeID IN
	(
		SELECT
			EmployeeID
		FROM
			Salary
		GROUP BY
			EmployeeID
		HAVING
			MAX(Amount) >= 300000
	)
;
