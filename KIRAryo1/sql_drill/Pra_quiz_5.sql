SELECT
	c.CustomerID,
	c.CustomerName,
	sp.ProductName,
	SUM(
		CASE
			WHEN sp.Amount IS NULL THEN 0
			ELSE sp.Amount
		END
	) AS '販売合計金額'
FROM
	Customers AS c
		LEFT OUTER JOIN
	(
		SELECT
			s.CustomerID AS CustomerID,
			p.ProductID AS ProductID,
			p.ProductName AS ProductName,
			s.Quantity * p.Price AS Amount
		FROM
			Sales AS s
				JOIN
			Products AS p
				ON s.ProductID = p.ProductID
	) AS sp
		ON sp.CustomerID = c.CustomerID
GROUP BY
	c.CustomerID,
	c.CustomerName,
	sp.ProductID,
	sp.ProductName
ORDER BY
	c.CustomerID,
	c.CustomerName,
	sp.ProductID
;
