UPDATE
	Salary AS k
SET
	k.Amount = k.Amount + (
		SELECT
			SUM(u.Quantity * p.Price) * 0.03
		FROM
			Sales AS u
				JOIN
			Products AS p
				ON p.ProductID = u.productID
		WHERE
			k.EmployeeID = u.EmployeeID
		GROUP BY
			u.EmployeeID
	)
WHERE
	PayDate = '2007-08-25'
	AND
	EXISTS
	(
		SELECT
			'X'
		FROM
			Sales
		WHERE
			Sales.EmployeeID = k.EmployeeID
			AND
			Sales.SaleDate < '2007-08-25'
	)
;
