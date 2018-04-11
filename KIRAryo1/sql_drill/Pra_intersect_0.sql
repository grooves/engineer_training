SELECT
	e.EmployeeName AS 氏名,
	s.SaleDate AS 日付
FROM
	Sales AS s
		JOIN
	Employees AS e
		ON s.EmployeeID = e.EmployeeID
INTERSECT
SELECT
	e.EmployeeName AS 氏名,
	s.PayDate AS 日付
FROM
	Salary AS s
		JOIN
	Employees AS e
		ON s.EmployeeID = e.EmployeeID
;
