UPDATE
	Salary
SET
	Amount = Amount * 0.90
WHERE
	PayDate = '2007-08-25'
	AND
	NOT EXISTS
	(
		SELECT
			EmployeeID
		FROM
			Sales
		WHERE
			Sales.EmployeeID = Salary.EmployeeID
		GROUP BY
			Sales.EmployeeID
	)
;
