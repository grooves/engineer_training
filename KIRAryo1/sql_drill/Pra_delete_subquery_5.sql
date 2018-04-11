DELETE
FROM
	Sales
WHERE
	EmployeeID IN
	(
		SELECT
			e.EmployeeID
		FROM
			Employees AS e
				JOIN
			BelongTo AS b
				ON b.EmployeeID = e.EmployeeID
		WHERE
			b.DepartmentID = 3
	)
;
