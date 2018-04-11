SELECT
	e.EmployeeID,
	CASE
		WHEN MAX(s.Amount) IS NULL THEN 0
		ELSE MAX(s.Amount)
	END AS 支給額
FROM
	Employees AS e
		LEFT OUTER JOIN
	Salary AS s
		ON e.EmployeeID = s.EmployeeID
WHERE
	s.PayDate = '2007-02-25'
GROUP BY
	s.EmployeeID
;
