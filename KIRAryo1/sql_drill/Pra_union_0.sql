SELECT
	CustomerName AS 氏名
FROM
	Customers
UNION
SELECT
	EmployeeName AS 氏名
FROM
	Employees
;
