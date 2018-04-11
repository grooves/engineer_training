UPDATE
	Salary
SET
	Amount = Amount * 1.10
WHERE
	PayDate = '2007-10-01'
	AND
	EmployeeID IN
	(
		SELECT
			EmployeeID
		FROM
			Sales
		GROUP BY
			EmployeeID
		HAVING
			COUNT(*) >= 50
	)
;
