SELECT
	d.DepartmentID,
	d.DepartmentName,
	YM,
	AVG(s.Amount) AS '平均給与'
FROM
	( SELECT
		EmployeeID,
		PayDate,
		SUBSTR( CAST(PayDate AS CHAR), 1, 7) AS YM,
		Amount
	FROM
		Salary
	WHERE
		SUBSTR( CAST(PayDate AS CHAR), 1, 4) = '2007'
	) AS s
		JOIN
	BelongTo AS b
		ON b.EmployeeID = s.EmployeeID
		AND s.PayDate >= b.StartDate
		AND s.PayDate <
			CASE WHEN b.EndDate IS NULL THEN '9999-12-31'
				 ELSE b.EndDate
			END
			JOIN
		Departments AS d
			ON d.DepartmentID = b.DepartmentID
GROUP BY
	d.DepartmentID,
	d.DepartmentName,
	YM
ORDER BY
	d.DepartmentID,
	d.DepartmentName,
	YM
;
