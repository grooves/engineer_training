SELECT
	EmployeeID AS 社員ID
,	COUNT(*) AS 支給回数
FROM
	Salary
WHERE
	EmployeeID >= 20
GROUP BY
	EmployeeID
HAVING
	COUNT(*) >= 12
;
