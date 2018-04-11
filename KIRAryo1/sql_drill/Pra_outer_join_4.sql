SELECT
	e.EmployeeID,
	CASE
		WHEN s.CNT IS NULL THEN 0
		ELSE s.CNT
	END AS 販売件数
FROM
	Employees AS e
		LEFT OUTER JOIN
	(
		SELECT
			EmployeeID,
			COUNT(*) AS CNT
		FROM
			Sales
		GROUP BY
			EmployeeID
	) AS s
		ON e.EmployeeID = s.EmployeeID
;
