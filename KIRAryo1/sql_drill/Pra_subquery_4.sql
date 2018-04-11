SELECT
	EmployeeID
,	EmployeeName
,	(
	/*	SELECT
			MAX(Amount)
		FROM
			Salary
		GROUP BY
			EmployeeID
		HAVING
			EmployeeID = Salary.EmployeeID */
		SELECT
			MAX(Amount)
		FROM
			Salary
		WHERE
			EmployeeID = Employees.EmployeeID
	) AS 最高給与額
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
