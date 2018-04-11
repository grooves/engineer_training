UPDATE
	Salary
SET
	Amount = Amount + (
		SELECT
			(2007 - HireFiscalYear) * 1000
		FROM
			Employees AS e
		WHERE
			Salary.EmployeeID = e.EmployeeID
		)
WHERE
	PayDate = '2008-02-14'
	AND
	EXISTS
	(
		SELECT
			'X'
		FROM
			Employees AS e
		WHERE
			Salary.EmployeeID = e.EmployeeID
	)
;
