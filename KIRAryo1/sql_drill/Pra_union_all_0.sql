SELECT
	CustomerName AS 氏名
FROM
	Customers
UNION ALL
SELECT
	EmployeeName AS 氏名
FROM
	Employees
;
