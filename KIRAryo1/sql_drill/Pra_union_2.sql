SELECT
	EmployeeID AS ID,
	EmployeeName AS 氏名
FROM
	Employees
UNION
SELECT
	EmployeeID AS ID,
	EmployeeName AS 氏名
FROM
	Employees
ORDER BY
	ID
;
