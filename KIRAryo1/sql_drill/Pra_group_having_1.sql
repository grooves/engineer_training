SELECT
	EmployeeID AS 社員ID
,	COUNT(*) AS 支給回数
FROM
	Salary
GROUP BY
	EmployeeID
HAVING
	COUNT(*) < 12
;
