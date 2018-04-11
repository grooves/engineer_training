SELECT
	d.DepartmentName AS 部門名
,	AVG(s.Amount) AS 給与平均額
FROM
	Salary AS s
		JOIN
	BelongTo AS b
		ON s.EmployeeID = b.EmployeeID
			JOIN
		Departments AS d
			ON b.DepartmentID = d.DepartmentID
GROUP BY
	d.DepartmentName
;
