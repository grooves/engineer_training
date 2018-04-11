DELETE
FROM
	Salary
WHERE
	EmployeeID NOT IN
	(
		SELECT
			EmployeeID
		FROM
			Sales
	)
;
