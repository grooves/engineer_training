SELECT
	CustomerID AS ID,
	CustomerName AS 氏名
FROM
	Customers
UNION
SELECT
	EmployeeID AS ID,
	EmployeeName AS 氏名
FROM
	Employees
ORDER BY
	ID
;
