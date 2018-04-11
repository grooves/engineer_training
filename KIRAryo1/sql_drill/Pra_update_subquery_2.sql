UPDATE
	Salary
SET
	Amount = Amount * 0.95
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
			COUNT(*) < 10
	)
;
