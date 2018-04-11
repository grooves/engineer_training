CREATE VIEW AvgSalaryByDept
	( DepartmentName,
		AvgAmount
	)
AS
SELECT
	d.DepartmentName AS 部門名,
	AVG( s.Amount ) AS 部門別平均給与額
FROM
	Salary AS s
		Join
	BelongTo AS b
		ON s.EmployeeID = b.EmployeeID
			JOIN
		Departments AS d
			ON d.DepartmentID = d.DepartmentID
GROUP BY
	d.DepartmentName
;
