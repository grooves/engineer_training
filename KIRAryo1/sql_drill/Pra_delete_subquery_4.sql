DELETE
FROM
	Employees
WHERE
	EmployeeID NOT IN
	(
		SELECT
			EmployeeID
		FROM
			Sales
		GROUP BY
			EmployeeID
		HAVING
			COUNT(*) > 5
	)
;
