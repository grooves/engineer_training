SELECT
	e.EmployeeID,
	MAX(e.EmployeeName) AS 社員名,
	SUM(
		CASE
			WHEN s.Quantity IS NULL THEN 0
			ELSE 1
		END
	) AS 販売件数
FROM
	Employees AS e
		LEFT OUTER JOIN
	Sales AS s
		ON s.EmployeeID = e.EmployeeID
GROUP BY
	e.EmployeeID
;
