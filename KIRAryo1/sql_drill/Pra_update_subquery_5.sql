UPDATE
	Salary
SET
	Amount = Amount * 1.10
WHERE
	PayDate = '2007-08-25'
	AND
	EmployeeID IN
	(
		SELECT
			s.EmployeeID
		FROM
			Sales AS s
				JOIN
			Customers AS c
				ON c.CustomerID = s.CustomerID
		WHERE
			c.CustomerClassID = 1
			AND
			s.SaleDate < '2007-08-25'
	)
;
