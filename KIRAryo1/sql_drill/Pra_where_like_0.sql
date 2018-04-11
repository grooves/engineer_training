SELECT
	COUNT( * ) AS 子のつく社員の人数
FROM
	Employees
WHERE
	EmployeeName LIKE '%子'
;
