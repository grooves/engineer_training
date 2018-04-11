SELECT
	Quantity
,	CustomerName
,	ProductName
,	EmployeeName
FROM
	Sales AS s
		JOIN
	Customers AS c
		ON c.CustomerID = s.CustomerID
		JOIN
	Employees AS e
		ON e.EmployeeID = s.EmployeeID
		JOIN
	Products AS p
		ON p.ProductID = s.ProductID
WHERE
	s.Quantity >= 200
;
