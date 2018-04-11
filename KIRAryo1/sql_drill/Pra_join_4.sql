SELECT
	s.Quantity
,	c.CustomerName
,	p.ProductName
,	e.EmployeeName
FROM
	Sales AS s
,	Customers AS c
,	Employees AS e
,	Products AS p
WHERE
	c.CustomerID = s.CustomerID
AND	e.EmployeeID = s.EmployeeID
AND	p.ProductID = s.ProductID
AND	s.Quantity >= 200
;
